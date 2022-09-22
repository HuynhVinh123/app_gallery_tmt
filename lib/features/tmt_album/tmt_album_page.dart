import 'package:flutter/material.dart';

class TmtAlbumPage extends StatefulWidget {
  const TmtAlbumPage({Key? key}) : super(key: key);

  @override
  State<TmtAlbumPage> createState() => _TmtAlbumPageState();
}

class _TmtAlbumPageState extends State<TmtAlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        title: const Text(
          'Albums',
        ),
      );
}
