import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_globe/stylish/colors.dart';
import 'package:news_globe/widgets/shapes/rounded_shape.dart';

class HorizentalNewsItem extends StatelessWidget {
  const HorizentalNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final
    theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: CachedNetworkImage(
                imageUrl:
                    'https://ichef.bbci.co.uk/news/1536/cpsprodpb/b943/live/ba40c660-50d8-11ef-b2d2-cdb23d5d7c5b.jpg.webp',
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                left: 8,
                top: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RoundedShape(
                            color: Colors.green,
                            child: Text(
                              '01-08-24',
                              style: theme.textTheme.headlineMedium?.copyWith(
                                  color: Colors.white),
                            )),
                        const SizedBox(width: 3),
                        RoundedShape(
                            color: AppColors.red,
                            child: Text(
                              'BBC',
                              style: theme.textTheme.headlineMedium?.copyWith(
                                  color: Colors.white),
                            ))
                      ],
                    ),
                    const SizedBox(height: 3),
                    RoundedShape(
                        color: AppColors.themeColor,
                        child: Text(
                          'Financial Times',
                          style: theme.textTheme.headlineMedium?.copyWith(
                              color: Colors.white),
                        ))
                  ],
                )),
            Positioned(
              left: 8,
              right: 8,
              bottom: 8,
              child: SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Text(
                          'Dozens of children killed in Bangladesh protests - Unicef',
                          style: theme.textTheme.headlineMedium?.copyWith(
                              color: Colors.white.withOpacity(0.8),
                              fontFamily: 'SfPro')),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
