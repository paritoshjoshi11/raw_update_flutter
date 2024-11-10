// https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=2156270edb69469fb9321ced51dd4efe
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:raw_update/model/newsArt.dart';

class FetchNews{
  static List sourcesId = [
    'bbc-news',
    'cnn',
    'reuters',
    'the-new-york-times',
    'the-guardian',
    'al-jazeera',
    'techcrunch',
    'bloomberg',
    'the-wall-street-journal',
    'financial-times',
    'huffpost',
    'usa-today',
    'forbes',
    'mashable',
    'the-independent',
    'the-verge',
    'cnet',
    'politico',
    'wired',
    'the-times-of-india',
    'sky-news',
    'the-sydney-morning-herald',
    'business-insider',
    'the-washington-post',
    'nbc-news',
    'abc-news',

  ];
  static Future<NewsArt> fetchNews() async{
    final _random = new Random();
    var sourceID = sourcesId[_random.nextInt(sourcesId.length)];

  Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=2156270edb69469fb9321ced51dd4efe"));

  Map body_data = jsonDecode(response.body);
  List articles = body_data["articles"];

  var myArticle = articles[_random.nextInt(articles.length)];
  print(myArticle);

  return NewsArt.fromAPItoApp(myArticle);
  }
}