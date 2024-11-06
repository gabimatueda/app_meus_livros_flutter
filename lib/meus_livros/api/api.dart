import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class LivroAPI {
  late final http.Client client;
  late final String baseUrl;

  LivroAPI(this.client, {this.baseUrl = 'https://api.exemplo.com'});

  Future<List<Livro>> obterLivrosDaAPI() async {
    final response = await client.get(Uri.parse('$baseUrl/livros'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Livro.fromMap(json)).toList();
    } else {
      throw Exception('Erro ao buscar livros');
    }
  }

  Future<void> inserirLivroNaAPI(Livro livro) async {
    final response = await client.post(
      Uri.parse('$baseUrl/livros'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(livro.toMap()),
    );

    if (response.statusCode != 201) {
      throw Exception('Erro ao inserir livro');
    }
  }

  Future<Livro?> buscarLivroPorTitulo(String titulo) async {
    final response = await client.get(Uri.parse('$baseUrl/livros?titulo=$titulo'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        return Livro.fromMap(data.first);
      }
      return null;
    } else {
      throw Exception('Erro ao buscar o livro pelo título');
    }
  }
}