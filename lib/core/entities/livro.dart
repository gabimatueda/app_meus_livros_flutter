class Livro {
   String titulo;
   String autor;
   int anoPublicacao;
   String genero;

 Livro({
  required this.titulo,
  required this.autor,
  required this.anoPublicacao,
  required this.genero,
 });

 factory Livro.fromMap(Map<String, dynamic> map) {
  return Livro(
    titulo: map['titulo'],
    autor: map['autor'],
    anoPublicacao: map['ano_publicacao'],
    genero: map['genero'],
  );
 }

 Map<String, dynamic> toMap() {
  return{
   'titulo': titulo,
   'autor': autor,
   'ano_publicacao': anoPublicacao,
   'genero': genero,
  };
 }
}