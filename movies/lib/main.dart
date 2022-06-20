import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/widget/customtext.dart';
import 'package:movies/widget/trending.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List trendingMovies = [];
  List trendingTV = [];

  final String APIKey = "28730bd60d9ea86724accff5d573239a";
  final String AccessToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyODczMGJkNjBkOWVhODY3MjRhY2NmZjVkNTczMjM5YSIsInN1YiI6IjYyNTM5MTcxYWFkOWMyMDMyMDc0MGFjYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.WYH_yeODTQh5K7YRb3gevMzXA7yKAuAncKQkRPMVIY4";

  loadmovies() async {
    //Connection to TMDB
    TMDB tmdbwWithCustomLogs = TMDB(ApiKeys(APIKey, AccessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));

    Map trendingResults = await tmdbwWithCustomLogs.v3.trending
        .getTrending(mediaType: MediaType.movie);
    Map trendingResults2 = await tmdbwWithCustomLogs.v3.trending
        .getTrending(mediaType: MediaType.tv);

    setState(() {
      trendingMovies = trendingResults['results'];
      trendingTV = trendingResults2['results'];
    });

    //print(trendingTV);
  }

  @override
  void initState() {
    // TODO: implement initState
    loadmovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const CustomText(
              text: "HAU Flix 🎥", color: Colors.brown, size: 30),
        ),
        body: ListView(
          children: [
            const Center(
                child: CustomText(
                    text: "Trending Movies", color: Colors.white, size: 30)),
            TrendingMovies(trending: trendingMovies),
            const Center(
                child: CustomText(
                    text: "Trending TV Shows", color: Colors.white, size: 30)),
            TrendingMovies(trending: trendingTV),
          ],
        ),
      ),
    );
  }
}
