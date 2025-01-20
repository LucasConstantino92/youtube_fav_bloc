import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtubefav/models/video_model.dart';

const API_KEY = "AIzaSyDip8z5aIue6xESshH0foxdQCoTeVGZyCU";

class Api {
  search(String search) async {
    http.Response response = await http.get(
      Uri.parse(
          "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10"),
    );
  }

  List<VideoModel> decode(http.Response response) {
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);
      List<VideoModel> videos = decoded['items'].map<VideoModel>((map) {
        return VideoModel.fromJson(map);
      }).toList();

      return videos;
    } else {
      throw Exception("Failed to load videos");
    }
  }
}

String nextPage =
    "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$_search&type=video&key=$API_KEY&maxResults=10&pageToken=$_nextToken";
String util =
    "http://suggestqueries.google.com/complete/search?hl=en&ds=yt&client=youtube&hjson=t&cp=1&q=$search&format=5&alt=json";
