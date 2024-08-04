import 'package:flutter/material.dart';
import 'package:news_globe/stylish/colors.dart';
import 'package:news_globe/views/items/horizental_news_item.dart';
import 'package:news_globe/views/items/vertical_news_item.dart';
import 'package:news_globe/widgets/shapes/rounded_shape.dart';

import '../../../widgets/background.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final
    theme = Theme.of(context); // Access the current theme

    return Background(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text('News', style: theme.textTheme.titleMedium?.copyWith(color: Colors.white,fontSize: 20)),
                const SizedBox(width: 3),
                RoundedShape(color: AppColors.red, child: Text('Globe',style: theme.textTheme.titleMedium?.copyWith(color: Colors.white,fontSize: 20),))
              ],
            ),
            const SizedBox(height: 10),
            HorizentalNewsItem(),
            const SizedBox(height: 10),
             Row(
              children: [
                Text('Recent News',style: theme.textTheme.headlineMedium,),
                const Spacer(),
                Text('View All',style: theme.textTheme.bodyMedium,),
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context,index){
                return VerticalNewsItem();
            }))
          ],
        ),
      ),
    );
  }
}
