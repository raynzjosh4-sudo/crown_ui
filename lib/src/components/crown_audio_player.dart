import 'package:flutter/material.dart';

/// A placeholder for CrownAudioPlayer component
///
/// This component requires the 'just_audio' or 'audioplayers' plugin to be added to pubspec.yaml.
/// To use audio player functionality, add: just_audio: ^0.9.0 to your pubspec.yaml
class CrownAudioPlayer extends StatefulWidget {
  /// URL or path of the audio to play
  final String audioSource;

  /// The width of the audio player
  final double? width;

  /// The height of the audio player
  final double? height;

  /// Whether the audio should autoplay
  final bool autoplay;

  /// Whether the audio should loop
  final bool looping;

  /// Called when playback starts
  final VoidCallback? onPlayStarted;

  /// Called when playback finishes
  final VoidCallback? onPlayFinished;

  const CrownAudioPlayer({
    Key? key,
    required this.audioSource,
    this.width,
    this.height,
    this.autoplay = false,
    this.looping = false,
    this.onPlayStarted,
    this.onPlayFinished,
  }) : super(key: key);

  @override
  _CrownAudioPlayerState createState() => _CrownAudioPlayerState();
}

class _CrownAudioPlayerState extends State<CrownAudioPlayer> {
  bool _isPlaying = false;

  void _togglePlayback() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
    if (_isPlaying && widget.onPlayStarted != null) {
      widget.onPlayStarted!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height ?? 100,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.music_note, color: Colors.grey[600], size: 36),
            SizedBox(height: 12),
            Text(
              'CrownAudioPlayer',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Add "just_audio" plugin to use this component',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            IconButton(
              icon: Icon(
                _isPlaying ? Icons.pause_circle : Icons.play_circle,
              ),
              onPressed: _togglePlayback,
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
