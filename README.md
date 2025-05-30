# bb8ks – Sistema de Livraria

**bb8ks** é um sistema de gerenciamento de livros, desenvolvido em Java com integração ao banco de dados MySQL, utilizando JDBC.  
Ele permite cadastrar, atualizar, deletar e consultar livros. As consultas podem ser realizadas por título, por ID ou exibir todos os livros cadastrados.

## Funcionalidades
- [Cadastro de funcionários](#tela-de-login)  
- [Acesso à biblioteca completa](#tela-inicial-do-sistema)
- Pesquisa de livros:
  - [Pesquisa de livros por ID](#resultado-da-busca)  
  - [Pesquisa de livros por título](#pesquisa-por-título)  
  - [Consulta geral](#exibir-todos-os-livros)  
- [Cadastro de livros](#cadastro-de-livros)  
- [Atualização de dados de um livro](#atualizar-livro)  
- [Exclusão de livros](#deletar-livro)

## Tecnologias Utilizadas

- HTML  
- CSS  
- Java (com JDBC e Servlets)  
- Apache Tomcat (servidor de aplicação)  
- MySQL (banco de dados)  
- IDE utilizada: NetBeans  

## Imagens de exemplo das funcionalidades

### Tela de login

Nesta tela, o usuário pode se cadastrar e fazer login no sistema.

![Screenshot 2025-05-30 131807](https://github.com/user-attachments/assets/82ca2afd-bfe7-47c7-9d9c-c23c2aaeb038)

---

### Tela inicial do sistema

Exibe todos os livros cadastrados de forma rápida.  
A sidebar está aberta, mostrando as demais funcionalidades disponíveis.

![Screenshot 2025-05-30 131828](https://github.com/user-attachments/assets/4bea9dab-e82b-4b91-8144-ec0699d10adb)

---

### Pesquisa por título

Nesta tela, é possível buscar livros pelo título usando o botão de busca.

![Screenshot 2025-05-30 131853](https://github.com/user-attachments/assets/743b4116-a821-4e4d-89dd-c6b1677479a1)

---

### Resultado da busca

Após a pesquisa, o sistema exibe todas as informações do livro.  
É possível atualizar ou deletar o livro diretamente desta tela.

![Screenshot 2025-05-30 132405](https://github.com/user-attachments/assets/0513ce3a-6da1-4183-871e-430a2cb1de86)

---

### Atualizar livro

Ao clicar em "Atualizar", uma nova tela é exibida com os campos editáveis (exceto o ID).  
Depois de realizar as alterações, basta clicar em "Efetivar Atualização".

![Screenshot 2025-05-30 132415](https://github.com/user-attachments/assets/bcd601d8-d81c-4d73-a900-30a1b3418f1c)

---

### Deletar livro

Ao clicar em "Deletar", o sistema solicita uma confirmação antes de excluir o livro.

![Screenshot 2025-05-30 132430](https://github.com/user-attachments/assets/dc27b096-4aba-4ca9-a6b8-a8a3f6b6c337)

---

### Cadastro de livros

Tela com formulário completo para inserir os dados de um novo livro.  
Após o preenchimento, basta clicar em "Cadastrar".

![Screenshot 2025-05-30 132439](https://github.com/user-attachments/assets/a9c863e9-d626-4012-8170-92d42c092272)

---

### Exibir todos os livros

Mostra uma galeria com as capas dos livros e um botão que permite visualizar todos os detalhes.

![Screenshot 2025-05-30 133347](https://github.com/user-attachments/assets/a7b54f97-db1a-4dcd-82a3-8e6b38235f80)

---

### Informações completas de todos os livros

Após a confirmação, o sistema exibe os dados completos de todos os livros cadastrados, organizados por ordem numérica do ID.

![Screenshot 2025-05-30 133356](https://github.com/user-attachments/assets/9267e125-eb6e-410a-ac3e-792ba435e177)
![image](https://github.com/user-attachments/assets/7fbb934d-2993-4083-9c76-7080b424a388)
