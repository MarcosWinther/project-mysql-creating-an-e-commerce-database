# 📦 Projeto: Banco de Dados E-commerce

Bem-vindo ao repositório do projeto **Banco de Dados E-commerce**! 

🚀 Este projeto consiste na modelagem, criação e manipulação de um banco de dados utilizando **MySQL** para atender às demandas de um sistema de comércio eletrônico. 

Este repositório foi desenvolvido como parte do desafio proposto pela professora [Juliana Mascarenhas](https://www.linkedin.com/in/juliana-mascarenhas-ds/) no curso ***"Construindo seu Primeiro Projeto Lógico de Banco de Dados"*** do **Bootcamp [Suzano](https://www.linkedin.com/company/suzano/posts/?feedView=all) - Análise de Dados com Power BI** na plataforma da **[DIO](https://www.dio.me/)**.

<br>

## 💡 Objetivo do Projeto
Este projeto foi criado para consolidar os conhecimentos sobre modelagem e manipulação de bancos de dados relacionais, além de explorar o uso prático do SQL em cenários do mundo real, como o gerenciamento de um e-commerce.

<br>


## 🗂️ Arquivos do Repositório

### 1️⃣ `schema_ecommerce.sql`
Este arquivo contém o script de criação do banco de dados `ecommerce` e suas respectivas tabelas. A estrutura abrange tabelas como:

- **PF** e **PJ** para cadastro de pessoas físicas e jurídicas.
- **clients** para cadastro de clientes.
- **product** para catálogo de produtos.
- **orders** para registro de pedidos.
- **payments** para gerenciamento de pagamentos.
- **supplier**, **seller** e relações entre produtos, fornecedores, vendedores e estoque.

Além disso, há a implementação de relações N:M e restrições para garantir a integridade referencial.

---

### 2️⃣ `insercao_schema_ecommerce.sql`
Este arquivo contém inserções iniciais de dados no banco `ecommerce`, como:

- Registros para pessoas físicas e jurídicas.
- Clientes e seus respectivos endereços.
- Produtos, incluindo suas categorias e avaliações.
- Pagamentos, pedidos e relações entre estoque, produtos e fornecedores.

---

### 3️⃣ `queries_schema_ecommerce.sql`
Este arquivo reúne consultas SQL úteis para manipulação e recuperação de dados no banco de dados, incluindo:

- **Recuperações simples** usando `SELECT`.
- **Filtros** com `WHERE`.
- Criação de **atributos derivados**.
- **Ordenações** com `ORDER BY`.
- Uso de **agrupamentos** com `HAVING`.
- **Junções** entre tabelas para exibir relações significativas.

<br>


## 🛠️ Ferramenta Utilizada
Este projeto foi desenvolvido utilizando a ferramenta **MySQL**, uma das soluções de banco de dados mais populares do mercado.

<br>





## 🚀 Como Usar

1. Clone o repositório:  
   ```bash
   git clone https://github.com/MarcosWinther/project-mysql-creating-an-e-commerce-database
   ````

2. Importe os arquivos SQL no **MySQL Workbench** ou em outra ferramenta de sua preferência.

3. Execute os scripts na seguinte ordem:
   - ``schema_ecommerce.sql``: para criar a estrutura do banco de dados.
   - ``insercao_schema_ecommerce.sql``: para popular as tabelas com dados iniciais.
   - ``queries_schema_ecommerce.sql``: para testar as consultas e explorar o banco.

<br>


## 📧 Contato
Se tiver dúvidas ou sugestões, sinta-se à vontade para abrir uma issue ou entrar em contato.

<br>


## 👨‍💻 Expert

<p>
    <img 
      align=left 
      margin=10 
      width=80 
      src="https://avatars.githubusercontent.com/u/44624583?v=4"
    />
    <p>&nbsp&nbsp&nbspMarcos Winther<br>
    &nbsp&nbsp&nbsp
    <a href="https://github.com/MarcosWinther">
    GitHub</a>&nbsp;|&nbsp;
    <a href="https://www.linkedin.com/in/marcoswinthersilva/">LinkedIn</a>
    </p>
</p>
<br/><br/>

---

⌨️ com 💜 por [Marcos Winther](https://github.com/MarcosWinther)