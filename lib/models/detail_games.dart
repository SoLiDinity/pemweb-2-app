import 'package:http/http.dart' as http;
import 'dart:convert';

class MinimumSystemRequirements {
  final String os;
  final String processor;
  final String memory;
  final String graphics;
  final String storage;

  MinimumSystemRequirements({
    required this.os,
    required this.processor,
    required this.memory,
    required this.graphics,
    required this.storage,
  });

  factory MinimumSystemRequirements.fromJson(Map<String, dynamic> json) {
    return MinimumSystemRequirements(
      os: json['os'],
      processor: json['processor'],
      memory: json['memory'],
      graphics: json['graphics'],
      storage: json['storage'],
    );
  }
}

class DetailGames {
  final int id;
  final String title;
  final String thumbnail;
  final String status;
  final String description;
  final String gameUrl;
  final String genre;
  final String platform;
  final String publisher;
  final String developer;
  final String releaseDate;
  final String freetogameProfileUrl;
  final MinimumSystemRequirements minimumSystemRequirements;

  DetailGames({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.status,
    required this.description,
    required this.gameUrl,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.releaseDate,
    required this.freetogameProfileUrl,
    required this.minimumSystemRequirements,
  });

  factory DetailGames.fromJson(Map<String, dynamic> json) {
    return DetailGames(
      id: json['id'],
      title: json['title'],
      thumbnail: json['thumbnail'],
      status: json['status'],
      description: json['description'],
      gameUrl: json['game_url'],
      genre: json['genre'],
      platform: json['platform'],
      publisher: json['publisher'],
      developer: json['developer'],
      releaseDate: json['release_date'],
      freetogameProfileUrl: json['freetogame_profile_url'],
      minimumSystemRequirements: MinimumSystemRequirements.fromJson(
          json['minimum_system_requirements']),
    );
  }
}

Future<DetailGames> loadDetailGame(int id) async {
  final url = Uri.parse('https://www.freetogame.com/api/game?id=$id');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResult = jsonDecode(response.body);
    return DetailGames.fromJson(jsonResult);
  } else {
    throw Exception('Failed to load game details');
  }
}
