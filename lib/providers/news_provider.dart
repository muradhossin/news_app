import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as Http;
import 'package:news_app/models/news_response.dart';
import 'package:news_app/utils/constants.dart';
class NewsProvider extends ChangeNotifier{
  NewsResponse? newsResponse;
  String category = 'technology';

  void setCategory(String cat){
    category = cat;
  }

  bool get hasDataLoaded => newsResponse != null;

  Future<void> getNewsData() async{
    final urlString = "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$newsApiKey";

    try{
      final response = await Http.get(Uri.parse(urlString));
      final map = jsonDecode(response.body);
      if(response.statusCode == 200){
        newsResponse = NewsResponse.fromJson(map);
        notifyListeners();
      }else{
        print(map['message']);
      }
    }catch(error){
      print(error.toString());
    }
  }
}