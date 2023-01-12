import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key, required this.imageUrl, this.imageTitle});

  final String imageUrl;
  final String? imageTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 20,
      shadowColor: AppTheme.primaryColor.withOpacity(0.2),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/loading.gif'),
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (imageTitle != null)
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(imageTitle ?? ''))
        // child: Text(imageTitle!))
      ]),
    );
  }
}
