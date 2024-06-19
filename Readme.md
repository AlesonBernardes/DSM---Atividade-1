# Biblioteca Virtual

Este projeto é uma implementação de uma biblioteca virtual em Dart, onde é possível cadastrar, remover e listar livros.

## Funcionalidades

1. **Cadastrar Livros**: Adicione novos livros à biblioteca.
2. **Remover Livros**: Remove livros da biblioteca com base no título, autor ou identificador único.
3. **Listar Livros**: Lista todos os livros cadastrados na biblioteca.

## Estrutura do Código

O projeto consiste em duas classes principais:

1. **Livro**:
    - Representa um livro com os atributos: título, autor, ano de publicação, gênero e um identificador único (ID).  
    
2. **BibliotecaVirtual**:
    - Gerencia a coleção de livros com métodos para cadastrar, remover e listar livros.


## Explicação Adicional dos Comentários  

1. **Classe Livro:**

- Explicamos que a classe representa um livro com atributos como título, autor, ano de publicação, gênero e identificador único.
- O construtor é comentado para mostrar como os atributos são inicializados.
- O método toString é explicado para mostrar como ele converte o objeto Livro em uma string legível.  

2. **Classe BibliotecaVirtual:**

Explicamos a finalidade da classe e que ela contém métodos para gerenciar livros.  
Cada método (cadastrarLivro, removerLivro, listarLivros) é detalhadamente comentado para explicar o que faz e como funciona.  

3. **Função main:**

Explicamos que é o ponto de entrada do programa.
Cada passo (cadastrar livros, listar livros, remover livros) é comentado para mostrar a sequência de operações e seu propósito.  

## Exemplo prático e simples de Uso

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

