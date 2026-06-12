# 🤖 Robot Framework E2E Automation - Swag Labs

![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=Selenium&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

Este projeto é uma **suíte completa de testes automatizados E2E** focada em demonstrar boas práticas de arquitetura em automação de testes utilizando o [Robot Framework](https://robotframework.org/). O sistema alvo dos testes é o [Swag Labs](https://www.saucedemo.com/), um e-commerce simulado, amplamente adotado na comunidade global de Qualidade de Software (QA).

## 🚀 Destaques do Projeto

Neste repositório, você encontrará a aplicação das seguintes abordagens e padrões de mercado:
- **Page Object Model (POM):** Separação estrita de responsabilidades entre elementos de página e lógicas de teste, melhorando a manutenibilidade.
- **CI/CD Pipeline:** Integração contínua através do **GitHub Actions**. A cada _Push_ ou _Pull Request_, os testes são executados em _headless mode_ diretamente na nuvem.
- **Clean Code & Keywords:** Palavras-chave semânticas e claras, permitindo que qualquer pessoa (mesmo sem background técnico) entenda o fluxo de negócio do teste.
- **Isolamento de Suítes:** Testes de Login, Carrinho e Checkout desenhados para rodar de forma atômica e independente.

## 🏗️ Arquitetura e Estrutura de Diretórios

```text
├── .github/workflows/   # Pipeline do GitHub Actions
├── resources/           # Componentes base e Page Objects
│   ├── base.robot       # Configurações globais e Setup/Teardown
│   └── pages/           # Mapeamento de locators e Keywords por página
│       ├── cart_page.robot
│       ├── checkout_page.robot
│       ├── inventory_page.robot
│       └── login_page.robot
├── tests/               # Casos de Teste isolados por contexto
│   ├── 01_login_test.robot
│   ├── 02_shopping_cart_test.robot
│   └── 03_checkout_test.robot
└── requirements.txt     # Dependências do projeto (Python)
```

## ⚙️ Como executar os testes localmente

### 1. Pré-requisitos
Certifique-se de ter o [Python](https://www.python.org/downloads/) e o navegador Google Chrome instalados na sua máquina.

### 2. Configurando o ambiente
Abra o terminal na pasta do projeto e crie um ambiente virtual (recomendado):

```bash
# Criar o ambiente virtual (venv)
python -m venv venv

# Ativar o ambiente virtual (Windows)
.\venv\Scripts\activate

# Ativar o ambiente virtual (Linux/Mac)
source venv/bin/activate
```

Instale as dependências contidas no `requirements.txt`:
```bash
pip install -r requirements.txt
```

### 3. Rodando os testes
Para rodar toda a suíte de testes e gerar os relatórios em uma pasta chamada `results`, execute:

```bash
robot -d results tests/
```

Ao final da execução, abra os arquivos `results/report.html` ou `results/log.html` em seu navegador para visualizar um dashboard interativo detalhando cada etapa executada.

---

### 👨‍💻 Sobre o Autor
Este projeto foi desenvolvido como demonstração das minhas habilidades técnicas e práticas no ecossistema de testes automatizados e integração contínua. Sinta-se à vontade para explorar o código!
