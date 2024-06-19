# Biblioteca Virtual

Este projeto é uma implementação de uma biblioteca virtual em Dart, onde é possível cadastrar, remover e listar livros.

## Funcionalidades

1. **Cadastrar Livros**: Adicione novos livros à biblioteca.
2. **Remover Livros**: Remova livros da biblioteca com base no título, autor ou identificador único.
3. **Listar Livros**: Liste todos os livros cadastrados na biblioteca.

## Estrutura do Código

O projeto consiste em duas classes principais:

1. **Livro**:
    - Representa um livro com os atributos: título, autor, ano de publicação, gênero e um identificador único (ID).
    
2. **BibliotecaVirtual**:
    - Gerencia a coleção de livros com métodos para cadastrar, remover e listar livros.

## Exemplo de Uso

### Cadastrar Livros

```dart
BibliotecaVirtual biblioteca = BibliotecaVirtual();

biblioteca.cadastrarLivro(Livro(
  titulo: '1984',
  autor: 'George Orwell',
  anoPublicacao: 1949,
  genero: 'Distopia',
  id: '1'
));


### Remover Livros

// Remover pelo título
biblioteca.removerLivro(titulo: '1984');

// Remover pelo ID
biblioteca.removerLivro(id: '2');


### Listar Livros

biblioteca.listarLivros();


### Estrutura do Projeto

biblioteca_virtual/
├── README.md
└── biblioteca_virtual.dart


