import 'package:json_annotation/json_annotation.dart';

part 'livro_response_dto.g.dart';

@JsonSerializable()
class LivroResponseDto {
  @JsonKey(name: 'Titulo')
  late String titulo;
  @JsonKey(name: 'Autor')
  late String autor;
  @JsonKey(name: 'AnoPublicacao')
  late String anoPublicacao;
  @JsonKey(name: 'Gênero')
  late String genero;

  LivroResponseDto({
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
  });

  factory LivroResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LivroResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LivroResponseDtoToJson(this);
}
