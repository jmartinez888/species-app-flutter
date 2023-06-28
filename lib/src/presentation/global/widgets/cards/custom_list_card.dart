import 'package:flutter/material.dart';

class CustomListCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? description;
  final Color? background;
  const CustomListCard({
    super.key,
    this.image,
    this.title,
    this.subtitle,
    this.description,
    this.background = Colors.yellow,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: background,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Row(
                  children: [
                    if (image != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          image!,
                          width: 72,
                          height: 72,
                          fit: BoxFit.cover,
                        ),
                      ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Estudio temáticos para ZEE del departamento de San Martín - Fisiografía"),
                          Text("Roger Escobedo")
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Column(
                  children: [
                    Text("Instituto de Investigaciones de la Amazonia Peruana")
                  ],
                ),
                Container(
                    alignment: Alignment.bottomRight,
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.downloading_sharp,
                          color: Colors.white,
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
