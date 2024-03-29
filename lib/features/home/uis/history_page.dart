import 'package:app_gallery_tmt/features/home/uis/weather_timeline_app_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'TMT-History',
          style: GoogleFonts.jua(
            color: Colors.white,
          ),
        ),
        elevation: 0,
      );

  Widget _buildBody() {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child:
                Lottie.asset('assets/animations/36965-play-button-active.json'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WeatherTimeline(),
                ),
              );
            },
          ),
          // Container(
          //   alignment: Alignment.center,
          //   height: 70,
          //   margin: const EdgeInsets.only(
          //     top: 28,
          //     left: 16,
          //     right: 16,
          //   ),
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(12),
          //       boxShadow: const [
          //         BoxShadow(
          //             color: Color(0xFFffebee),
          //             blurRadius: 2,
          //             offset: Offset(-2, 2)),
          //       ]),
          //   child: ListTile(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => WeatherTimeline(),
          //         ),
          //       );
          //     },
          //     title: const Text(
          //       'Quá trình phát triền',
          //       style: TextStyle(
          //         color: Color(0xFF303030),
          //         fontSize: 16,
          //       ),
          //     ),
          //     trailing: const Icon(
          //       Icons.arrow_forward_ios_rounded,
          //       color: Color(0xFF303030),
          //       size: 18,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
