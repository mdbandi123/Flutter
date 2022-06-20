import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/widget/customtext.dart';
import 'package:movies/widget/details.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 270,
              //color: Colors.blue,
              child: Container(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trending.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(DetailsPage(
                            trending: trending,
                            index: index,
                          ));
                        },
                        child: Container(
                          width: 140,
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://image.tmdb.org/t/p/w500" +
                                                trending[index]
                                                    ["poster_path"]))),
                              ),
                              Container(
                                  child: CustomText(
                                      text: trending[index]['title'] == null
                                          ? trending[index]['name']
                                          : trending[index]['title'],
                                      size: 15,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
