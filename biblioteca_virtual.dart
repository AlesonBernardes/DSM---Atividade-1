// Classe Livro representa um livro com atributos como título, autor, ano de publicação, gênero e um identificador único (ID)
class Livro {
  String titulo;
  String autor;
  int anoPublicacao;
  String genero;
  String id;  // Identificador único do livro

  // Construtor da classe Livro
  Livro({
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
    required this.id,
  });

  // Método para representar o objeto Livro como uma string
  @override
  String toString() {
    return 'ID: $id | Título: $titulo | Autor: $autor | Ano: $anoPublicacao | Gênero: $genero';
  }
}

// Classe BibliotecaVirtual representa uma coleção de livros e métodos para gerenciá-los
class BibliotecaVirtual {
  // Lista privada para armazenar os livros cadastrados
  List<Livro> _livros = [];

  // Método para cadastrar novos livros na biblioteca
  void cadastrarLivro(Livro livro) {
    _livros.add(livro);  // Adiciona o livro à lista de livros
    print('Livro cadastrado com sucesso: ${livro.titulo}');  // Mensagem de confirmação
  }

  // Método para remover livros da biblioteca com base em critérios (título, autor ou ID)
  void removerLivro({String? titulo, String? autor, String? id}) {
    // Remove os livros que atendem aos critérios fornecidos
    _livros.removeWhere((livro) =>
      (id != null && livro.id == id) ||
      (titulo != null && livro.titulo == titulo) ||
      (autor != null && livro.autor == autor)
    );
    print('Livro(s) removido(s) com sucesso.');  // Mensagem de confirmação
  }

  // Método para listar todos os livros disponíveis na biblioteca
  void listarLivros() {
    // Verifica se a lista de livros está vazia
    if (_livros.isEmpty) {
      print('Nenhum livro cadastrado na biblioteca.');  // Mensagem se não houver livros
    } else {
      print('Livros disponíveis na biblioteca:');  // Mensagem de cabeçalho
      // Itera sobre a lista de livros e imprime as informações de cada livro
      for (var livro in _livros) {
        print(livro);
      }
    }
  }
}

// Função principal que serve como ponto de entrada do programa
void main() {
  // Cria uma instância da classe BibliotecaVirtual
  BibliotecaVirtual biblioteca = BibliotecaVirtual();

  // Cadastra alguns livros na biblioteca
  biblioteca.cadastrarLivro(Livro(
    titulo: '1984',
    autor: 'George Orwell',
    anoPublicacao: 1949,
    genero: 'Distopia',
    id: '1'
  ));

  biblioteca.cadastrarLivro(Livro(
    titulo: 'O Senhor dos Anéis',
    autor: 'J.R.R. Tolkien',
    anoPublicacao: 1954,
    genero: 'Fantasia',
    id: '2'
  ));

  biblioteca.cadastrarLivro(Livro(
    titulo: 'O Alquimista',
    autor: 'Paulo Coelho',
    anoPublicacao: 1988,
    genero: 'Ficção',
    id: '3'
  ));

  // Lista todos os livros cadastrados na biblioteca
  biblioteca.listarLivros();

  // Remove um livro pelo título
  biblioteca.removerLivro(titulo: '1984');

  // Lista todos os livros após a remoção
  biblioteca.listarLivros();

  // Remove um livro pelo ID
  biblioteca.removerLivro(id: '2');

  // Lista todos os livros após a remoção
  biblioteca.listarLivros();
}
