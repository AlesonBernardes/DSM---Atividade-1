# Biblioteca Virtual

Este projeto é uma implementação de uma biblioteca virtual em Dart, onde é possível cadastrar, remover, listar, buscar e atualizar informações de livros.

## Funcionalidades

1. **Cadastrar Livros**: Adicione novos livros à biblioteca.
2. **Remover Livros**: Remova livros da biblioteca com base no título, autor ou identificador único.
3. **Listar Livros**: Liste todos os livros cadastrados na biblioteca.
4. **Buscar Livros**: Busque livros pelo título ou autor.
5. **Atualizar Livros**: Atualize as informações dos livros cadastrados.

## Estrutura do Código

O projeto consiste em duas classes principais:

1. **Livro**:
    - Representa um livro com os atributos: título, autor, ano de publicação, gênero e um identificador único (ID).
    
2. **BibliotecaVirtual**:
    - Gerencia a coleção de livros com métodos para cadastrar, remover, listar, buscar e atualizar livros.

## Exemplo de Uso

### Cadastrar Livros

```dart
BibliotecaVirtual biblioteca = BibliotecaVirtual();

biblioteca.cadastrarLivro(Livro(
  titulo: 'Cem Anos de Solidão',
  autor: 'Gabriel Garcia Marquez',
  anoPublicacao: 1967,
  genero: 'Romance',
  id: '1'
));
