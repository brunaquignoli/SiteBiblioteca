# bb8ks – Sistema de Livraria

**bb8ks** é um sistema de gerenciamento de livros, desenvolvido em Java com integração ao banco de dados MySQL, utilizando JDBC.  
Ele permite cadastrar, atualizar, deletar e consultar livros. As consultas podem ser realizadas por título, por ID ou exibir todos os livros cadastrados.

## Funcionalidades
- [Cadastro](#tela-de-login)  
- [Acesso à biblioteca completa](#tela-inicial-do-sistema)
- Pesquisa de livros:
  - [Pesquisa de livros por título](#pesquisa-por-título)
  - [Pesquisa de livros por ID](#pesquisa-por-id)
  - [Resultado da busca](#resultado-da-busca)  
  - [Consulta geral](#exibir-todos-os-livros)
  - [Todas as informações](#informações-completas-de-todos-os-livros)
- [Cadastro de livros](#cadastro-de-livros)  
- [Atualização de dados de um livro](#atualizar-livro)  
- [Exclusão de livros](#deletar-livro)

## Tecnologias Utilizadas

- HTML  
- CSS
- JavaScript    
- Java (com JDBC e Servlets)  
- Apache Tomcat (servidor de aplicação)  
- MySQL (banco de dados)  
- IDE utilizada: NetBeans  

## Script do banco de dados
[Banco de dados](bancodedados.txt)

## Imagens de exemplo das funcionalidades

### Tela de login

Nesta tela, o usuário pode se cadastrar e fazer login no sistema.

![Screenshot 2025-05-30 131807](https://github.com/user-attachments/assets/82ca2afd-bfe7-47c7-9d9c-c23c2aaeb038)



---

### Tela inicial do sistema

Exibe todos os livros cadastrados de forma rápida.  
Na primeira imagem a sidebar está aberta, mostrando as demais funcionalidades disponíveis.
E, ao clicar nas capas, é possível ver as informações sobre o livro escolhido, como feito no exemplo com o livro "Dom Quixote".

![Screenshot 2025-05-30 131828](https://github.com/user-attachments/assets/4bea9dab-e82b-4b91-8144-ec0699d10adb)
<img width="1920" height="969" alt="image" src="https://github.com/user-attachments/assets/e45d7a66-8d88-4e8f-b15d-38e72423332a" />
<img width="1920" height="966" alt="image" src="https://github.com/user-attachments/assets/8c320a4a-7dd1-4f9e-a630-044e9430dd14" />

---

### Pesquisa por título

Nesta tela, é possível buscar livros pelo título usando o botão de busca.

![Screenshot 2025-05-30 131853](https://github.com/user-attachments/assets/743b4116-a821-4e4d-89dd-c6b1677479a1)

---

### Pesquisa por ID

De forma semelhante à pesquisa por título, ao é possível buscar livros pelo id usando o botão de busca.

<img width="1920" height="975" alt="image" src="https://github.com/user-attachments/assets/97b56468-ad4e-4d5f-bdba-1ee1a3580a11" />

---

### Resultado da busca

Após a pesquisa, o sistema exibe todas as informações do livro.  
É possível atualizar ou deletar o livro diretamente desta tela.

<img width="1920" height="968" alt="image" src="https://github.com/user-attachments/assets/37f1436f-a7fe-4147-b0cd-5ba1441c872e" />

---

### Exibir todos os livros

Mostra uma galeria com as capas dos livros e um botão que permite visualizar todos os detalhes.

![Screenshot 2025-05-30 133347](https://github.com/user-attachments/assets/a7b54f97-db1a-4dcd-82a3-8e6b38235f80)

---

### Informações completas de todos os livros

Após a confirmação, o sistema exibe os dados completos de todos os livros cadastrados, organizados por ordem numérica do ID.

<img width="1920" height="965" alt="image" src="https://github.com/user-attachments/assets/227a24c0-ac1d-448f-a8d3-41ac6639a6f8" />
<img width="1920" height="969" alt="image" src="https://github.com/user-attachments/assets/adfb87bf-5ef9-4b3b-ad1e-4df800fc87af" />


---

### Cadastro de livros

Tela com formulário completo para inserir os dados de um novo livro.  
Após o preenchimento, basta clicar em "Cadastrar".

<img width="1920" height="970" alt="image" src="https://github.com/user-attachments/assets/2fddc722-b2d3-4a32-b1f4-5e3c93c99a25" />


---

 ### Atualizar livro

> Ao clicar em "Atualizar", uma nova tela é exibida com os campos editáveis (exceto o ID).  
Depois de realizar as alterações, basta clicar em "Efetivar Atualização".

<img width="1920" height="970" alt="image" src="https://github.com/user-attachments/assets/96e1ea3a-6f79-4341-bd8c-364bad4f8413" />


---

### Deletar livro

> Ao clicar em "Deletar", o sistema solicita uma confirmação antes de excluir o livro.

<img width="1920" height="966" alt="image" src="https://github.com/user-attachments/assets/c74c6c08-7848-4c0a-a62d-16e0cd3ff648" />



# Status do projeto

Finalizado!!
