import 'package:app_gallery_tmt/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../data/repository/image_repository_impl.dart';
import '../../models/image_details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: Assets.images.test.a1.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New Year',
    details:
        'This image was taken during a party in New York on new years eve. Quite a colorful shot.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a2.path,
    price: '\$10.00',
    photographer: 'Huu Duong',
    title: 'Spring',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a3.path,
    price: '\$30.00',
    photographer: 'Huu Duong',
    title: 'Casual Look',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a4.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a5.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a6.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a7.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a8.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a9.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a10.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a11.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a12.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a13.path,
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a14.path,
    price: '\$20.00',
    photographer: 'Matthew',
    title: 'Cone Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a15.path,
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: Assets.images.test.a16.path,
    price: '\$15.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
];

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    Key? key,
    this.title = 'Gallery',
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
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MediaDetailPage(
                    //       imagePath: _images[index].imagePath,
                    //       title: _images[index].title,
                    //       photographer: _images[index].photographer,
                    //       price: _images[index].price,
                    //       details: _images[index].details,
                    //       index: index,
                    //     ),
                    //   ),
                    // );
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
