import 'package:estateportal/Models/videos.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FeedVideosProvider with ChangeNotifier {
  VideoPlayerController? _controller;
  int _currentVideoIndex = 0;
  List<VideoFeedModel> _videos = [];
  bool _isPlaying = false;
  VideoFeedModel? _currentVideo;

  int get currentVideoIndex => _currentVideoIndex;
  bool get isPlaying => _isPlaying;
  List<VideoFeedModel> get videos => _videos;
  VideoPlayerController? get controller => _controller;
  VideoFeedModel? get currentVideo => _currentVideo;

  set currentVideoIndex(int index) {
    _currentVideoIndex = index;
    notifyListeners();
  }

  set isPlaying(bool isPlaying) {
    _isPlaying = isPlaying;
    notifyListeners();
  }

  set videos(List<VideoFeedModel> videos) {
    _videos = videos;
    notifyListeners();
  }

  set controller(VideoPlayerController? controller) {
    _controller = controller;
    notifyListeners();
  }

  //check with dummy data
  void setDummyData() {
    VideoFeedModel.addDummyData().forEach((element) {
      _videos.add(element);
    });
  }

  //init
  void init() {
    _currentVideo = _videos[_currentVideoIndex];
    _controller = VideoPlayerController.network(_currentVideo!.videourl)
      ..initialize().then((_) {
        _controller!.play();
        _controller!.setLooping(true);
        _controller!.addListener(() {
          if (_controller!.value.isPlaying) {
            _isPlaying = true;
            notifyListeners();
          } else {
            _isPlaying = false;
            notifyListeners();
          }
        });
      });
  }
  // next video
  void nextVideo() {
    if (_currentVideoIndex < _videos.length - 1) {
      _currentVideoIndex++;
      _currentVideo = _videos[_currentVideoIndex];
      _controller!.pause();
      _controller!.dispose();
      _controller = VideoPlayerController.network(_currentVideo!.videourl)
        ..initialize().then((_) {
          _controller!.play();
          _controller!.setLooping(true);
          _controller!.addListener(() {
            if (_controller!.value.isPlaying) {
              _isPlaying = true;
              notifyListeners();
            } else {
              _isPlaying = false;
              notifyListeners();
            }
          });
        });
      notifyListeners();
    }
  }

  // previous video
  void previousVideo() {
    if (_currentVideoIndex > 0) {
      _currentVideoIndex--;
      _currentVideo = _videos[_currentVideoIndex];
      _controller!.pause();
      _controller!.dispose();
      _controller = VideoPlayerController.network(_currentVideo!.videourl)
        ..initialize().then((_) {
          _controller!.play();
          _controller!.setLooping(true);
          _controller!.addListener(() {
            if (_controller!.value.isPlaying) {
              _isPlaying = true;
              notifyListeners();
            } else {
              _isPlaying = false;
              notifyListeners();
            }
          });
        });
      notifyListeners();
    }
  }

  //pause video
  void pauseVideo() {
    _controller!.pause();
    _isPlaying = false;
    notifyListeners();
  }
}
