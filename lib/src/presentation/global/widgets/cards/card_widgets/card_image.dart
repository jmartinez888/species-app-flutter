import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
      child: FadeInImage(
        fit: BoxFit.cover,
        placeholder: AssetImage(
          'assets/images/estructura.png',
        ),
        image: NetworkImage('https://picsum.photos/seed/picsum/300/400'),
      ),
    );
  }
}
