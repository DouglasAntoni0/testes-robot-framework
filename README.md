# 🚀 Automação de Testes E2E: Escalabilidade e Qualidade Contínua

![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=Selenium&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Quality Assurance](https://img.shields.io/badge/QA-Engineering-FF6F00?style=for-the-badge)

Este repositório não é apenas uma suíte de testes; é a materialização de uma **cultura de Engenharia de Qualidade (QA Engineering)**. Ele foi arquitetado para demonstrar como a automação de ponta a ponta (E2E) deve ser implementada em ambientes corporativos de alta performance, priorizando escalabilidade, resiliência e integração contínua (CI/CD).

O sistema alvo utilizado para validar a arquitetura é o [Swag Labs](https://www.saucedemo.com/), um simulador de e-commerce que abrange os fluxos mais críticos de plataformas de varejo digital (Login, Catálogo, Carrinho, Checkout).

## 🧠 Visão Estratégica & Padrões Arquiteturais

Acredito fortemente que código de teste é código de produção. Por isso, este framework foi construído sob sólidos princípios de engenharia de software:

### 1. Page Object Model (POM) Evoluído
Em vez de scripts procedurais frágeis, o projeto utiliza uma separação estrita de responsabilidades:
- **Lógica de Negócio (Tests):** Escrita em uma linguagem declarativa, focada no "O Quê" (Comportamento).
- **Interação com a Interface (Pages/Keywords):** Focada no "Como", encapsulando os seletores (locators) e as chamadas do Selenium.
> **Impacto:** Se a interface (UI) mudar, a manutenção ocorre em um único lugar (Page Object), garantindo que dezenas de testes não quebrem simultaneamente. Alta facilidade de manutenção e escalabilidade.

### 2. Mindset BDD (Behavior-Driven Development)
Embora utilizando a estrutura nativa do Robot Framework, os cenários são descritos com foco no comportamento do usuário. Isso cria uma "documentação viva", permitindo que Product Owners e Desenvolvedores leiam e validem as regras de negócio diretamente no código.

### 3. Shift-Left Testing & Cultura DevOps (CI/CD)
A qualidade não é uma etapa final, é um processo contínuo. 
O projeto conta com um **Pipeline automatizado via GitHub Actions**. A cada *Push* ou *Pull Request* para a branch principal, a suíte inteira é acionada na nuvem em modo _headless_.
> **Impacto:** Feedback instantâneo para o time de desenvolvimento (Fail Fast), impedindo que regressões cheguem a ambientes de homologação ou produção.

### 4. Resiliência e Previsibilidade
Os seletores (Locators) foram escolhidos cuidadosamente (priorizando `id` e `data-test`) e as lógicas de sincronização da automação foram configuradas para evitar "Flaky Tests" (testes instáveis), garantindo alta confiabilidade na tomada de decisão (Go/No-Go) para deploys.

---

## 🏗️ Estrutura do Framework

A estrutura foi projetada para suportar o crescimento orgânico do número de testes em projetos de grande escala:

```text
├── .github/workflows/   # Pipeline de CI/CD (GitHub Actions)
├── resources/           # Componentes arquiteturais e Page Objects
│   ├── base.robot       # Configurações globais, Setup (Hooks) e Teardown
│   └── pages/           # Encapsulamento de locators e ações (POM)
│       ├── cart_page.robot
│       ├── checkout_page.robot
│       ├── inventory_page.robot
│       └── login_page.robot
├── tests/               # Suítes de Teste Atômicas
│   ├── 01_login_test.robot
│   ├── 02_shopping_cart_test.robot
│   └── 03_checkout_test.robot
└── requirements.txt     # Gerenciamento de dependências
```

## ⚙️ Como executar localmente

Se desejar auditar o código e executá-lo em sua própria máquina, o setup é simples e direto:

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/DouglasAntoni0/testes-robot-framework.git
   cd testes-robot-framework
   ```

2. **Crie e ative um ambiente virtual Python (Recomendado):**
   ```bash
   python -m venv venv
   # Windows:
   .\venv\Scripts\activate
   # Linux/Mac:
   source venv/bin/activate
   ```

3. **Instale as dependências:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Execute a suíte:**
   ```bash
   robot -d results tests/
   ```

Após a execução, um relatório dinâmico e rastreável será gerado em `results/report.html`, fornecendo logs granulares essenciais para _troubleshooting_.

---

### 👨‍💻 Sobre o Autor & Abordagem Profissional

Sou apaixonado por garantir que o software não apenas funcione, mas entregue valor com confiabilidade. Este repositório reflete minha visão técnica: automatizar testes não é sobre "clicar em botões via script", mas sim sobre **projetar a arquitetura da garantia de qualidade**, criar processos eficientes e acelerar a entrega de software seguro (Continuous Testing).

*Estou sempre em busca de otimizar processos e garantir a máxima confiabilidade no ciclo de vida do desenvolvimento.*
