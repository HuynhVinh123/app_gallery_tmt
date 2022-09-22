import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/repository/image_repository_impl.dart';

class TmtAlbumDetailPage extends StatefulWidget {
  const TmtAlbumDetailPage({
    Key? key,
    required this.albumModel,
  }) : super(key: key);

  final AlbumModel albumModel;

  @override
  State<TmtAlbumDetailPage> createState() => _TmtAlbumDetailPageState();
}

class _TmtAlbumDetailPageState extends State<TmtAlbumDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.albumModel.name,
          style: GoogleFonts.jua(
            color: Colors.black,
          ),
        ),
        elevation: 1,
      );
}
