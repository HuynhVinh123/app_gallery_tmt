import 'package:flutter/material.dart';

import '../../category/category_page.dart';
import '../../tmt_album/tmt_album_page.dart';
import 'history_page.dart';

class WeatherTimelineApp extends StatefulWidget {
  const WeatherTimelineApp({Key? key}) : super(key: key);

  @override
  State<WeatherTimelineApp> createState() => _WeatherTimelineAppState();
}

class _WeatherTimelineAppState extends State<WeatherTimelineApp>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  int _positionTab = 0;

  @override
  void initState() {
    super.initState();
    expandController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    expandController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather TimelineTile',
      // builder: Frame.builder,
      home: Scaffold(
        body: _buildBody(),
        bottomNavigationBar: _buildNavigationBar(),
      ),
    );
  }

  Widget _buildNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _positionTab,
      selectedItemColor: const Color(0xFFf44336),
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Công ty',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.folder_copy_outlined),
          label: 'Album',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.image),
          label: 'Hình ảnh',
        ),
      ],
      onTap: (int value) {
        setState(() {
          _positionTab = value;
        });
      },
    );
  }

  Widget _buildBody() {
    switch (_positionTab) {
      case 0:
        return FadeTransition(
          opacity: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(expandController),
          child: const HistoryPage(),
        );
      case 1:
        return FadeTransition(
          opacity: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(expandController),
          child: const TmtAlbumPage(),
        );
      case 2:
        return FadeTransition(
          opacity: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(expandController),
          child: const CategoryPage(),
        );
    }
    return const SizedBox();
  }
}
