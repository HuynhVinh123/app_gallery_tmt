import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../data/repository/image_repository_impl.dart';

class MediaDetailPage extends StatefulWidget {
  const MediaDetailPage({
    Key? key,
    required this.imagePath,
    required this.index,
    required this.imageModels,
  }) : super(key: key);

  final String imagePath;
  final int index;
  final List<ImageModel> imageModels;

  @override
  State<MediaDetailPage> createState() => _MediaDetailPageState();
}

class _MediaDetailPageState extends State<MediaDetailPage> {
  final PhotoViewScaleStateController _scaleStateController =
      PhotoViewScaleStateController();

  late final PageController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: PhotoViewGallery.builder(
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
              scaleStateController: _scaleStateController,
              filterQuality: FilterQuality.high,
              imageProvider: AssetImage(widget.imageModels[index].path),
              initialScale: PhotoViewComputedScale.contained,
              heroAttributes: PhotoViewHeroAttributes(tag: 'logo$index'),
            );
          },
          itemCount: widget.imageModels.length,
          loadingBuilder: (BuildContext context, ImageChunkEvent? event) =>
              Center(
            child: SizedBox(
              width: 20.0,
              height: 20.0,
              child: CircularProgressIndicator(
                value: event == null ? 0 : 20,
              ),
            ),
          ),
          onPageChanged: (int value) {},
          pageController: _scrollController,
        ),
      ),
    );
  }
}
