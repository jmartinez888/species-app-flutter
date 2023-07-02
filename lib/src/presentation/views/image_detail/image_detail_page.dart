import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImageDetailPage extends StatefulWidget {
  const ImageDetailPage({super.key});

  @override
  State<ImageDetailPage> createState() => _ImageDetailPageState();
}

class _ImageDetailPageState extends State<ImageDetailPage> {
  final PageController pageController = PageController();
  final List<Map<String, dynamic>> imagen = [
    {'title': 'Abc', 'img': 'https://images2.alphacoders.com/568/568493.jpg'},
    {'title': 'Abc', 'img': 'https://images2.alphacoders.com/568/568493.jpg'},
    {'title': 'Abc', 'img': 'https://images2.alphacoders.com/568/568493.jpg'},
    {'title': 'Abc', 'img': 'https://images2.alphacoders.com/568/568493.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => print('object'),
        child: Stack(
          children: [
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: NetworkImage(imagen[index]['img']),
                  heroAttributes:
                      PhotoViewHeroAttributes(tag: imagen[index]['img']),
                );
              },
              itemCount: imagen.length,
              loadingBuilder: (context, event) => Center(
                child: CircularProgressIndicator(
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded /
                          event.expectedTotalBytes!.toDouble(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
