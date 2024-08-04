import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VerticalNewsItem extends StatelessWidget {
  const VerticalNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: SizedBox(
        height: 110,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: CachedNetworkImage(
                  imageUrl: 'https://ichef.bbci.co.uk/news/1536/cpsprodpb/b943/live/ba40c660-50d8-11ef-b2d2-cdb23d5d7c5b.jpg.webp',
                  fit: BoxFit.cover,
                ),
              ),
              // Blurred overlay
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7, sigmaY: 8),
                  child: Container(
                    color: Colors.black.withOpacity(0.2), // Semi-transparent overlay
                  ),
                ),
              ),
              // Content
              Row(
                children: [
                  SizedBox(
                    height: 110,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        imageUrl: 'https://ichef.bbci.co.uk/news/1536/cpsprodpb/b943/live/ba40c660-50d8-11ef-b2d2-cdb23d5d7c5b.jpg.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
