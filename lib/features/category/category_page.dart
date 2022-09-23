import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/repository/image_repository_impl.dart';
import '../../models/image_details.dart';
import '../media_detail/media_detail_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    Key? key,
    this.title = 'TMT Gallery',
    this.albumModel,
  }) : super(key: key);

  final String title;
  final AlbumModel? albumModel;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final ImageRepositoryImpl _repository = ImageRepositoryImpl();
  List<ImageDetails> _images = [];
  List<ImageModel> _imageModels = [];

  @override
  void initState() {
    super.initState();
    if (widget.albumModel != null) {
      _imageModels = _repository.getAlbumById(widget.albumModel!.id).images;
    } else {
      _imageModels = _repository.getImages();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: Text(
        widget.title,
        style: GoogleFonts.jua(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 10,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: MasonryGridView.count(
              // physics: const ClampingScrollPhysics(),
              itemCount: _imageModels.length,
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemBuilder: (context, index) {
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MediaDetailPage(
                          imagePath: _imageModels[index].path,
                          index: index,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: 'logo$index',
                    child: _ImageViewer(
                      url: _imageModels[index].path,
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class _ImageViewer extends StatelessWidget {
  const _ImageViewer({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Image.asset(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, object, stack) {
          return Image.asset(
            'assets/images/no_image.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
