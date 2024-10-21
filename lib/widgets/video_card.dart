import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final bool isShorts;

  const VideoCard({super.key, this.isShorts = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: isShorts ? 150 : null, // Width for shorts
      child: Column(
        children: [
          Container(
            color: Colors.grey[300],
            height: isShorts
                ? 106 // Reduced height for shorts by 14px
                : 100, // Regular video height
            child: const Center(
              child: Icon(Icons.play_circle_outline, size: 40), // Placeholder
            ),
          ),
          const SizedBox(height: 8),
          Text(
            isShorts ? 'Amazing Short Clip' : 'Flutter Tutorial for Beginners',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (!isShorts) ...[
            const Text('Flutter Channel'),
            const Text('1.2M views • 2 days ago'),
          ],
        ],
      ),
    );
  }
}
