import 'package:flutter/material.dart';
import 'package:raw_update/controller/fetchNews.dart';
import 'package:raw_update/view/widget/NewsContainer.dart';

import '../model/newsArt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NewsArt  newsArt;
  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {

    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value){
            GetNews();
          },
          itemBuilder: (context,index){
            return NewsContainer(
                imgUrl: newsArt.imgUrl,
                newsCnt: newsArt.newsCnt,
                newsHead: newsArt.newsHead,
                newsDes: newsArt.newsDes,
                newsUrl: newsArt.newsUrl);
      }),
    );
  }
}
    