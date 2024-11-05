import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';
import 'package:flutter_application_1/meus_livros/api/models/response/livro_response_dto.dart';

class LivroBuilder {
  static Livro toEntity(LivroResponseDto dto) {
    return Livro(
      titulo: dto.titulo,
      autor: dto.autor,
      anoPublicacao: int.parse(dto.anoPublicacao),
      genero: dto.genero,
    );
  }
}
