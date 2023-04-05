import 'package:fbroadcast/fbroadcast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invidious/controllers/videoInListController.dart';
import 'package:invidious/globals.dart';
import 'package:invidious/main.dart';
import 'package:invidious/models/videoInList.dart';
import 'package:invidious/myRouteObserver.dart';
import 'package:invidious/views/components/videoThumbnail.dart';
import 'package:logging/logging.dart';

import '../../models/imageObject.dart';
import '../../utils.dart';
import '../channel.dart';
import '../video.dart';

class VideoListItem extends StatelessWidget {
  final VideoInList video;

  VideoListItem({super.key, required this.video});

  final log = Logger('VideoInList');

  openVideo(BuildContext context) {
    navigatorKey.currentState?.push(MaterialPageRoute(settings: ROUTE_VIDEO, builder: (context) => VideoView(videoId: video.videoId)));
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GetBuilder(
      init: VideoInListController(video.videoId),
      tag: video.videoId,
      builder: (controller) => InkWell(
        onTap: () => openVideo(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            VideoThumbnailView(
              videoId: video.videoId,
              thumbnailUrl: ImageObject.getBestThumbnail(video!.videoThumbnails)?.url ?? '',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
                            child: AnimatedOpacity(
                              duration: animationDuration,
                              opacity: controller.progress > 0.1 ? 1 : 0,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: colorScheme.secondaryContainer,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: AnimatedFractionallySizedBox(
                                    widthFactor: controller.progress > 0 ? controller.progress : 0,
                                    heightFactor: 1,
                                    duration: const Duration(milliseconds: 750),
                                    curve: Curves.easeInOutQuad,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: colorScheme.primary,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: video.lengthSeconds > 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 25,
                              decoration: BoxDecoration(color: Colors.black.withOpacity(0.75), borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  prettyDuration(Duration(seconds: video.lengthSeconds)),
                                  style: const TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              video.title,
              textAlign: TextAlign.left,
              style: TextStyle(color: colorScheme.primary, fontWeight: FontWeight.normal),
            ),
            Visibility(
              child: InkWell(
                onTap: () {
                  log.info('Opening channel ${video.authorId}');
                  Navigator.push(context, MaterialPageRoute(settings: ROUTE_CHANNEL, builder: (context) => ChannelView(channelId: video.authorId!)));
                },
                child: Row(
                  children: [
                    Text(
                      video.author ?? '',
                      style: TextStyle(color: colorScheme.secondary),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Visibility(visible: (video.viewCount ?? 0) > 0, child: const Icon(Icons.visibility)),
                Visibility(
                    visible: (video.viewCount ?? 0) > 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(compactCurrency.format(video.viewCount)),
                    )),
                Expanded(
                    child: Text(
                  video.publishedText ?? '',
                  textAlign: TextAlign.end,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
