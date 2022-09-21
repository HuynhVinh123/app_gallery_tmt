import 'package:app_gallery_tmt/widgets/app_button.dart';
import 'package:flutter/material.dart';

class MediaDetailPage extends StatelessWidget {
  const MediaDetailPage(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.photographer,
      required this.price,
      required this.details,
      required this.index})
      : super(key: key);

  final String imagePath;
  final String title;
  final String photographer;
  final String price;
  final String details;
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
                        fit: BoxFit.cover,
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
          SafeArea(
            child: SizedBox(
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'By $photographer',
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          details,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: AppButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      title: 'Done',
                      backgroundColor: Colors.redAccent,
                      titleColor: Colors.white,
                      borderColor: Colors.redAccent,
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
