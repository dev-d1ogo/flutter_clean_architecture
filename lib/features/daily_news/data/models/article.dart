/*
  Modelos de Dados (Data Models): Essas classes representam a estrutura dos dados que a aplicação manipula. 
  Elas podem ser usadas para mapear dados que vêm de uma API, banco de dados ou outras fontes. 
  Por exemplo, você pode ter um modelo User que define as propriedades de um usuário, como nome, email e idade. 
  Esses modelos são frequentemente usados nas camadas de Data e Domain.
 */

import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    int? super.id,
    String? super.author,
    String? super.title,
    String? super.description,
    String? super.url,
    String? super.imageUrl,
    String? super.publishedAt,
    String? super.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'], // Convertendo 'id' do JSON
      author: json['author'], // Convertendo 'author' do JSON
      title: json['title'], // Convertendo 'title' do JSON
      description: json['description'], // Convertendo 'description' do JSON
      url: json['url'], // Convertendo 'url' do JSON
      imageUrl: json['imageUrl'], // Convertendo 'imageUrl' do JSON
      publishedAt: json['publishedAt'], // Convertendo 'publishedAt' do JSON
      content: json['content'], // Convertendo 'content' do JSON
    );
  }
}
