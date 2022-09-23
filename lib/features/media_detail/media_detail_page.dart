import 'package:flutter/material.dart';

class MediaDetailPage extends StatelessWidget {
  const MediaDetailPage(
      {Key? key, required this.imagePath, required this.index})
      : super(key: key);

  final String imagePath;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: 'logo$index',
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    leading: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
