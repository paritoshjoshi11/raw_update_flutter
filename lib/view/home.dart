import 'package:flutter/material.dart';
import 'package:raw_update/view/widget/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context,index){
            return NewsContainer(
                imgUrl: "https://miro.medium.com/v2/resize:fit:828/format:webp/0*2YK8HWDX6dWNAWtl.png",
                newsCnt: "2",
                newsHead: "Data Engineering concepts: Part 1, Data Modeling",
                newsDes: "Data Engineering is the process of designing and defining pipelines that collect raw data from different sources and make the data compatible for analysis and derive business value.",
                newsUrl: "https://medium.com/@mudrapatel17/data-engineering-concepts-part-1-data-modeling-cb6fcf1da42d");
      }),
    );
  }
}
    