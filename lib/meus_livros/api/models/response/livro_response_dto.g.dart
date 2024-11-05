// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livro_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LivroResponseDto _$LivroResponseDtoFromJson(Map<String, dynamic> json) =>
    LivroResponseDto(
      titulo: json['Titulo'] as String,
      autor: json['Autor'] as String,
      anoPublicacao: json['AnoPublicacao'] as String,
      genero: json['Gênero'] as String,
    );

Map<String, dynamic> _$LivroResponseDtoToJson(LivroResponseDto instance) =>
    <String, dynamic>{
      'Titulo': instance.titulo,
      'Autor': instance.autor,
      'AnoPublicacao': instance.anoPublicacao,
      'Gênero': instance.genero,
    };
