import 'dart:convert';

class MovieModel {
  bool adult;
  String backDropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String description;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double grade;
  int voteCount;
  MovieModel({
    required this.adult,
    required this.backDropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.description,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.grade,
    required this.voteCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backDropPath': backDropPath,
      'genreIds': genreIds,
      'id': id,
      'originalLanguage': originalLanguage,
      'originalTitle': originalTitle,
      'description': description,
      'popularity': popularity,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
      'title': title,
      'video': video,
      'grade': grade,
      'voteCount': voteCount,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      adult: map['adult'] as bool,
      backDropPath: map['backdrop_path'] as String,
      genreIds: (map['genre_ids'].cast<int>()),
      id: map['id'] as int,
      originalLanguage: map['original_language'] as String,
      originalTitle: map['original_title'] as String,
      description: map['overview'] as String,
      popularity: map['popularity'] as double,
      posterPath: map['poster_path'] as String,
      releaseDate: map['release_date'] as String,
      title: map['title'] as String,
      video: map['video'] as bool,
      grade: double.parse(map['vote_average'].toString()),
      voteCount: map['vote_count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MovieModel(adult: $adult, backDropPath: $backDropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, description: $description, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, grade: $grade, voteCount: $voteCount)';
  }
}
