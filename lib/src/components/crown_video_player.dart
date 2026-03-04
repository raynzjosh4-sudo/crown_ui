import 'package:flutter/material.dart';

/// A placeholder for CrownVideoPlayer component
///
/// This component requires the 'video_player' plugin to be added to pubspec.yaml.
/// To use video player functionality, add: video_player: ^2.0.0 to your pubspec.yaml
class CrownVideoPlayer extends StatelessWidget {
  /// URL of the video to play
  final String videoUrl;

  /// Whether the video should autoplay
  final bool autoplay;

  /// Whether the video should loop
  final bool looping;

  /// The width of the video player
  final double? width;

  /// The height of the video player
  final double? height;

  /// Whether to show video controls
  final bool showControls;

  const CrownVideoPlayer({
    Key? key,
    required this.videoUrl,
    this.autoplay = false,
    this.looping = false,
    this.width,
    this.height,
    this.showControls = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 300,
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.video_library, color: Colors.white, size: 48),
            SizedBox(height: 16),
            Text(
              'CrownVideoPlayer',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Add "video_player" plugin to use this component',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
