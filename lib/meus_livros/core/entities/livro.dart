class Livro {
  int? id;
  String titulo;
  String autor;
  int anoPublicacao;
  String genero;

  Livro({
    this.id,
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
  });

  factory Livro.fromMap(Map<String, dynamic> map) {
    return Livro(
      id: map['id'],
      titulo: map['titulo'],
      autor: map['autor'],
      anoPublicacao: map['ano_publicacao'],
      genero: map['genero'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'autor': autor,
      'ano_publicacao': anoPublicacao,
      'genero': genero,
    };
  }
}
