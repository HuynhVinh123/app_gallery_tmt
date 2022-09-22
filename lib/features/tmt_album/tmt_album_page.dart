import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/repository/image_repository_impl.dart';
import 'tmt_album_detail_page.dart';

class TmtAlbumPage extends StatefulWidget {
  const TmtAlbumPage({Key? key}) : super(key: key);

  @override
  State<TmtAlbumPage> createState() => _TmtAlbumPageState();
}

class _TmtAlbumPageState extends State<TmtAlbumPage> {
  List<AlbumModel> _albums = [];
  final ImageRepositoryImpl _repository = ImageRepositoryImpl();
  @override
  void initState() {
    super.initState();

    _initData();
  }

  void _initData() async {
    _albums = await _repository.getAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'TMT-Albums',
          style: GoogleFonts.jua(
            color: Colors.black,
          ),
        ),
        elevation: 1,
      );

  Widget _buildBody() {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                height: 220),
        itemCount: _albums.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: _Item(
              albumModel: _albums[index],
            ),
          );
        });
  }
}

class _Item extends StatelessWidget {
  const _Item({
    Key? key,
    required this.albumModel,
  }) : super(key: key);

  final AlbumModel albumModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TmtAlbumDetailPage(
              albumModel: albumModel,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _imageTops(
                path2: '',
                path1: '',
                isTop: true,
                size: double.infinity,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Expanded(
              child: _imageTops(
                path2: '',
                path1: '',
                isTop: false,
                size: double.infinity,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              albumModel.name,
              style: const TextStyle(
                color: Color(0xFF303030),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '${albumModel.images.length} ảnh',
              style: const TextStyle(
                color: Color(0xff858585),
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageTops({
    required String path1,
    required String path2,
    required bool isTop,
    required double size,
  }) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: isTop
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(12),
                    )
                  : const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                    ),
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: isTop
                  ? const BorderRadius.only(
                      topRight: Radius.circular(12),
                    )
                  : const BorderRadius.only(
                      bottomRight: Radius.circular(12),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight
    extends SliverGridDelegate {
  /// Creates a delegate that makes grid layouts with a fixed number of tiles in
  /// the cross axis.
  ///
  /// All of the arguments must not be null. The `mainAxisSpacing` and
  /// `crossAxisSpacing` arguments must not be negative. The `crossAxisCount`
  /// and `childAspectRatio` arguments must be greater than zero.
  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight({
    required this.crossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.height = 56.0,
  })  : assert(crossAxisCount > 0),
        assert(mainAxisSpacing >= 0),
        assert(crossAxisSpacing >= 0),
        assert(height > 0);

  /// The number of children in the cross axis.
  final int crossAxisCount;

  /// The number of logical pixels between each child along the main axis.
  final double mainAxisSpacing;

  /// The number of logical pixels between each child along the cross axis.
  final double crossAxisSpacing;

  /// The height of the crossAxis.
  final double height;

  bool _debugAssertIsValid() {
    assert(crossAxisCount > 0);
    assert(mainAxisSpacing >= 0.0);
    assert(crossAxisSpacing >= 0.0);
    assert(height > 0.0);
    return true;
  }

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    assert(_debugAssertIsValid());
    final double usableCrossAxisExtent =
        constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1);
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent = height;
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(
      SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight oldDelegate) {
    return oldDelegate.crossAxisCount != crossAxisCount ||
        oldDelegate.mainAxisSpacing != mainAxisSpacing ||
        oldDelegate.crossAxisSpacing != crossAxisSpacing ||
        oldDelegate.height != height;
  }
}
