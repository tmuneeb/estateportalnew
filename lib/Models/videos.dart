import 'dart:convert';




var dummydata = [
  VideoFeedModel(
    name: 'Rajesh',
    caption: 'This is caption #hashtag #hashtag #hashtag',
    username: '@account_name',
    areaInSqm: '1000',
    price: '100000',
    location: 'Bangalore',
    videourl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    profilePicurl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
  VideoFeedModel(
    name: 'Rajesh 2',
    caption: 'This is caption #hashtag #hashtag #hashtag',
    username: '@account_name',
    areaInSqm: '1000',
    price: '100000',
    location: 'Bangalore',
    videourl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
    profilePicurl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
  VideoFeedModel(
    name: 'Rajesh',
    caption: 'This is caption #hashtag #hashtag #hashtag',
    username: '@account_name',
    areaInSqm: '1000',
    price: '100000',
    location: 'Bangalore',
    videourl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    profilePicurl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
  VideoFeedModel(
    name: 'Rajesh',
    caption: 'This is caption #hashtag #hashtag #hashtag',
    username: '@account_name',
    areaInSqm: '1000',
    price: '100000',
    location: 'Bangalore',
    videourl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    profilePicurl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
  VideoFeedModel(
    name: 'Rajesh',
    caption: 'This is caption #hashtag #hashtag #hashtag',
    username: '@account_name',
    areaInSqm: '1000',
    price: '100000"',
    location: 'Bangalore',
    videourl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    profilePicurl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
];

class VideoFeedModel{
  final String name;
  final String caption;
  final String username;
  final String areaInSqm;
  final String price;
  final String location;
  final String videourl;
  final String profilePicurl;

  VideoFeedModel({
    required this.name,
    required this.caption,
    required this.username,
    required this.areaInSqm,
    required this.price,
    required this.location,
    required this.videourl,
    required this.profilePicurl,
  });

  //copywith
  VideoFeedModel copyWith({
    String? name,
    String? caption,
    String? username,
    String? areaInSqm,
    String? price,
    String? location,
    String? videourl,
    String? profilePicurl,
  }) {
    return VideoFeedModel(
      name: name ?? this.name,
      caption: caption ?? this.caption,
      username: username ?? this.username,
      areaInSqm: areaInSqm ?? this.areaInSqm,
      price: price ?? this.price,
      location: location ?? this.location,
      videourl: videourl ?? this.videourl,
      profilePicurl: profilePicurl ?? this.profilePicurl,
    );
  }

  //from json
  factory VideoFeedModel.fromJson(Map<String, dynamic> json) {
    return VideoFeedModel(
      name: json['name'],
      caption: json['caption'],
      username: json['username'],
      areaInSqm: json['areaInSqm'],
      price: json['price'],
      location: json['location'],
      videourl: json['videourl'],
      profilePicurl: json['profilePicurl'],
    );
  }

  //to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'caption': caption,
      'username': username,
      'areaInSqm': areaInSqm,
      'price': price,
      'location': location,
      'videourl': videourl,
      'profilePicurl': profilePicurl,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'caption': caption,
      'username': username,
      'areaInSqm': areaInSqm,
      'price': price,
      'location': location,
      'videourl': videourl,
      'profilePicurl': profilePicurl,
    };
  }
  //from map
  factory VideoFeedModel.fromMap(Map<String, dynamic> map) {
    return VideoFeedModel(
      name: map['name'],
      caption: map['caption'],
      username: map['username'],
      areaInSqm: map['areaInSqm'],
      price: map['price'],
      location: map['location'],
      videourl: map['videourl'],
      profilePicurl: map['profilePicurl'],
    );
  }
  //add dummy data and return list of VideoFeedModel
  static List<VideoFeedModel>  addDummyData(){
    return dummydata;

  }

}
