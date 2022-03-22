import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {

  String _apiKey = 'beeb782cf1430e4574cc951e37e2d141';
  String _baseUrl = 'api.themoviedb.org';
  String _languague = 'es-ES';

  MoviesProvider(){
    print('MoviesProvider inicializado');
    getOnDisplayMovies();
  }


  getOnDisplayMovies() async{
    var url = Uri.https(_baseUrl, '/3/movie/now_playing', {
      'api_key': _apiKey,
      'languague' : _languague,
      'page': '1'
      });

    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    print(nowPlayingResponse.results[0].title);
  }
  
}