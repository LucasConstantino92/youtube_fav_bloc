class VideoModel {
  final String? id;
  final String? title;
  final String? thumbnail;
  final String? channel;

  VideoModel({this.id, this.title, this.thumbnail, this.channel});

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id']['videoId'],
      title: json['snippet']['title'],
      thumbnail: json['snippet']['thumbnails']['high']['url'],
      channel: json['snippet']['channelTitle'],
    );
  }
}
