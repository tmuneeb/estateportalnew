import 'dart:math';
import 'dart:ui';

import 'package:estateportal/providers/videos.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _videoController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    Provider.of<FeedVideosProvider>(context, listen: false).setDummyData();
    Provider.of<FeedVideosProvider>(context, listen: false).init();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _videoController = Provider.of<FeedVideosProvider>(context).controller!;
    super.didChangeDependencies();
  }

  @override
  Widget _bottom() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: 200,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                //image on 30% of screen
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1629371997433-d11e6161a8b3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXBwYXJ0bWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60"),
                          fit: BoxFit.cover)),
                ),
                //text and icons on 70% of screen
                Consumer<FeedVideosProvider>(builder:
                    (context, FeedVideosProvider feedVideosProvider, child) {
                      //reterna title in first line then caption in second line then some vertical space and then 3 icons in row for area price and location
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 200,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          feedVideosProvider.currentVideo!.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          feedVideosProvider.currentVideo!.caption,
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TtIcon(
                              iconData: Icons.location_on,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              feedVideosProvider.currentVideo!.location,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 10),
                            TtIcon(
                              iconData: Icons.attach_money,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              feedVideosProvider.currentVideo!.price.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 10),
                            TtIcon(
                              iconData: Icons.home,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              feedVideosProvider.currentVideo!.areaInSqm.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );

                  }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _pauseIcon() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 80,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: Provider.of<FeedVideosProvider>(context).videos.length,
        scrollDirection: Axis.vertical,
        controller: _pageController,
        onPageChanged: (index) {
          Provider.of<FeedVideosProvider>(context, listen: false).nextVideo();
          _videoController =
              Provider.of<FeedVideosProvider>(context, listen: false)
                  .controller!;
        },
        itemBuilder: (context, index) {
          return Container(
            color: Colors.black,
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (_videoController.value.isPlaying) {
                      _videoController.pause();
                    } else {
                      _videoController.play();
                    }
                  },
                  child: AspectRatio(
                      aspectRatio: _videoController.value.aspectRatio,
                      child: VideoPlayer(_videoController)),
                ),
                if (!_videoController.value.isPlaying) _pauseIcon(),
                _bottom(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TtIcon extends StatelessWidget {
  final IconData iconData;
  final double size;

  const TtIcon({Key? key, required this.iconData, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(iconData, size: this.size, color: Colors.white);
  }
}

class TtText extends StatelessWidget {
  final String text;
  final double size;

  const TtText({Key? key, required this.text, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(color: Colors.white, fontSize: this.size));
  }
}
