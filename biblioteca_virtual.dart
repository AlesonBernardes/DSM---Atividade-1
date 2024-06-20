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
  // Mapa privado para armazenar os livros cadastrados com o ID como chave
  Map<String, Livro> _livros = {};

  // Método para cadastrar novos livros na biblioteca
  void cadastrarLivro(Livro livro) {
    _livros[livro.id] = livro;  // Adiciona o livro ao mapa de livros
    print('Livro "${livro.titulo}" cadastrado com sucesso!');  // Mensagem de confirmação
  }

  // Método para remover livros da biblioteca com base em critérios (título, autor ou ID)
  void removerLivro({String? titulo, String? autor, String? id}) {
    // Verifica e remove os livros que atendem aos critérios fornecidos
    if (id != null && _livros.containsKey(id)) {
      _livros.remove(id);
      print('Livro com ID $id removido com sucesso!');
    } else if (titulo != null || autor != null) {
      _livros.removeWhere((key, livro) =>
        (titulo != null && livro.titulo == titulo) ||
        (autor != null && livro.autor == autor)
      );
      print('Livros removidos com base nos critérios fornecidos.');
    } else {
      print('Nenhum critério de remoção válido fornecido.');
    }
  }

  // Método para listar todos os livros disponíveis na biblioteca
  void listarLivros() {
    // Verifica se a lista de livros está vazia
    if (_livros.isEmpty) {
      print('Nenhum livro cadastrado na biblioteca.');  // Mensagem se não houver livros
    } else {
      print('Livros disponíveis na biblioteca:');  // Mensagem de cabeçalho
      // Itera sobre o mapa de livros e imprime as informações de cada livro
      _livros.forEach((id, livro) {
        print(livro);
      });
    }
  }

  // Método para buscar livros pelo título
  void buscarLivroPorTitulo(String titulo) {
    var livrosEncontrados = _livros.values.where((livro) => livro.titulo.toLowerCase().contains(titulo.toLowerCase())).toList();
    if (livrosEncontrados.isEmpty) {
      print('Nenhum livro encontrado com o título: $titulo');
    } else {
      print('Livros encontrados com o título "$titulo":');
      for (var livro in livrosEncontrados) {
        print(livro);
      }
    }
  }

  // Método para buscar livros pelo autor
  void buscarLivroPorAutor(String autor) {
    var livrosEncontrados = _livros.values.where((livro) => livro.autor.toLowerCase().contains(autor.toLowerCase())).toList();
    if (livrosEncontrados.isEmpty) {
      print('Nenhum livro encontrado com o autor: $autor');
    } else {
      print('Livros encontrados com o autor "$autor":');
      for (var livro in livrosEncontrados) {
        print(livro);
      }
    }
  }

  // Método para atualizar informações de um livro
  void atualizarLivro(String id, {String? novoTitulo, String? novoAutor, int? novoAnoPublicacao, String? novoGenero}) {
    if (_livros.containsKey(id)) {
      var livro = _livros[id];
      if (novoTitulo != null) livro?.titulo = novoTitulo;
      if (novoAutor != null) livro?.autor = novoAutor;
      if (novoAnoPublicacao != null) livro?.anoPublicacao = novoAnoPublicacao;
      if (novoGenero != null) livro?.genero = novoGenero;
      print('Informações do livro atualizadas com sucesso: ${livro}');
    } else {
      print('Livro com ID $id não encontrado.');
    }
  }
}

// Função principal que serve como ponto de entrada do programa
void main() {
  // Cria uma instância da classe BibliotecaVirtual
  BibliotecaVirtual biblioteca = BibliotecaVirtual();

  // Cadastra alguns livros na biblioteca
  biblioteca.cadastrarLivro(Livro(
    titulo: 'Cem Anos de Solidão',
    autor: 'Gabriel Garcia Marquez',
    anoPublicacao: 1967,
    genero: 'Romance',
    id: '1'
  ));

  biblioteca.cadastrarLivro(Livro(
    titulo: 'Orgulho e Preconceito',
    autor: 'Jane Austen',
    anoPublicacao: 1813,
    genero: 'Romance',
    id: '2'
  ));

  biblioteca.cadastrarLivro(Livro(
    titulo: 'O Nome da Rosa',
    autor: 'Umberto Eco',
    anoPublicacao: 1980,
    genero: 'Mistério',
    id: '3'
  ));

  biblioteca.cadastrarLivro(Livro(
    titulo: 'Guerra e Paz',
    autor: 'Liev Tolstói',
    anoPublicacao: 1869,
    genero: 'Histórico',
    id: '4'
  ));

  biblioteca.cadastrarLivro(Livro(
    titulo: 'O Morro dos Ventos Uivantes',
    autor: 'Emily Brontë',
    anoPublicacao: 1847,
    genero: 'Romance',
    id: '5'
  ));

  // Lista todos os livros cadastrados na biblioteca
  biblioteca.listarLivros();

  // Remove um livro pelo título
  biblioteca.removerLivro(titulo: 'Cem Anos de Solidão');

  // Lista todos os livros após a remoção
  biblioteca.listarLivros();

  // Remove um livro pelo ID
  biblioteca.removerLivro(id: '2');

  // Lista todos os livros após a remoção
  biblioteca.listarLivros();

  // Busca livros pelo título
  biblioteca.buscarLivroPorTitulo('Nome da Rosa');

  // Busca livros pelo autor
  biblioteca.buscarLivroPorAutor('Emily Brontë');

  // Atualiza informações de um livro
  biblioteca.atualizarLivro('3', novoTitulo: 'O Nome da Rosa (Edição Revisada)', novoAnoPublicacao: 1981);

  // Lista todos os livros após a atualização
  biblioteca.listarLivros();
}
