import 'dart:async';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:species/src/presentation/global/widgets/buttons/custom_icon_button.dart';

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

  bool showInteraction = true;
  Timer? _timer;

  void hideShowInteraction() {
    _timer = Timer(const Duration(seconds: 5), () {
      if (showInteraction) {
        setState(() {
          showInteraction = false;
        });
      }
    });
  }

  void switchShowInteraction() {
    if (showInteraction) {
      setState(() {
        showInteraction = false;
        _timer?.cancel();
      });
    } else {
      setState(() {
        showInteraction = true;
      });
      hideShowInteraction();
    }
  }

  @override
  void initState() {
    hideShowInteraction();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          GestureDetector(
            onTap: switchShowInteraction,
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  maxScale: PhotoViewComputedScale.covered * 8,
                  minScale: PhotoViewComputedScale.contained,
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
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            switchOutCurve: Curves.easeInOut,
            switchInCurve: Curves.easeInOut,
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: showInteraction
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomIconButtom(
                      icon: Icons.arrow_back_ios_rounded,
                      tooltip: 'Atrás',
                      onPressed: () => Navigator.maybePop(context),
                    ),
                  )
                : null,
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              switchOutCurve: Curves.easeOut,
              switchInCurve: Curves.easeIn,
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: showInteraction
                  ? CustomIconButtom(
                      icon: Icons.download_outlined,
                      tooltip: 'Descargar',
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      iconColor: Theme.of(context).colorScheme.onPrimary,
                      onPressed: () {
                        _timer?.cancel();
                      },
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
