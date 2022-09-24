import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:weather_icons/weather_icons.dart';

import '../../category/category_page.dart';

class WeatherTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFffa4a2),
            Color(0xFFe4211f),
          ],
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          accentColor: const Color(0xFFDB84B1).withOpacity(0.2),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: false,
            appBar: _buildAppBar(),
            body: ListView(
              children: <Widget>[
                const SizedBox(
                  height: 12,
                ),
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.3,
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(
                    width: 92,
                    height: 92,
                    indicator: _Sun(),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                  endChild: _ContainerHeader(),
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.stars,
                    size: 20,
                  ),
                  hour: '2011',
                  weather: 'Giai đoạn khởi đầu',
                  temperature: '',
                  phrase:
                      'Bắt đầu từ 2011, TMT hoạt động theo hình thức sử dụng công nghệ để giải quyết khó khăn của từng khách hàng.',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CategoryPage(),
                      ),
                    );
                  },
                  paddingTop: 10,
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.moon_alt_new,
                    size: 20,
                  ),
                  hour: '2018',
                  weather: 'Phát triển phần mềm quản lý bán hàng',
                  temperature: '',
                  phrase:
                      'Nắm bắt được nhu cầu bán hàng online ngày càng phát triển. '
                      'TMT bắt đầu phát triển 1 phần mềm để hỗ trợ chốt đơn nhanh chóng cho khách hàng.',
                  onPressed: () {},
                  paddingTop: 34,
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.barometer,
                    size: 20,
                  ),
                  hour: '2019',
                  weather: 'Phát triển đa lĩnh vực phần mềm',
                  temperature: '',
                  phrase:
                      'Với tâm nguyện “Kiến tạo thành công” TMT bắt đầu áp dụng những kinh nghiệm trong phát triển đa lĩnh vực phần mềm mang lại giải pháp tối ưu cho nhà bán hàng.',
                  onPressed: () {},
                  paddingTop: 32,
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.day_fog,
                    size: 20,
                  ),
                  hour: '2021',
                  weather:
                      'Bứt phá vượt trội với nhiều sản phẩm công nghệ và đạt giải Sao Khuê',
                  temperature: '',
                  phrase:
                      'Các sản phẩm của TMT được vinh danh nhận giải Sao Khuê 2021 và được giới công nghệ, báo chí truyền thông (HTV7 công nghệ thời đại 4.0, Vnexpress, Genk, Dantri,...)',
                  onPressed: () {},
                  paddingTop: 40,
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.day_fog,
                    size: 20,
                  ),
                  hour: '2022',
                  weather: 'Bứt phá thành công',
                  temperature: '',
                  phrase:
                      'Sau những thành công của các sản mà TMT tạo ra. TMT đang nỗ lực để tạo ra các sản phẩm mới. ',
                  onPressed: () {},
                  paddingTop: 12,
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(
        'Happy Birthday TMT',
        style: GoogleFonts.jua(
          color: const Color(0xFF8e0000),
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
    );
  }

  TimelineTile _buildTimelineTile({
    required _IconIndicator indicator,
    required String hour,
    required String weather,
    required String temperature,
    required String phrase,
    required VoidCallback onPressed,
    required double paddingTop,
    bool isLast = false,
  }) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      beforeLineStyle: LineStyle(color: Colors.white.withOpacity(0.7)),
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0.3,
        drawGap: false,
        width: 30,
        height: 30,
        indicator: indicator,
      ),
      isLast: isLast,
      startChild: Container(
        alignment: const Alignment(0.0, -0.45),
        child: Text(
          hour,
          style: GoogleFonts.abhayaLibre(
            fontSize: 24,
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      endChild: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 10,
            top: paddingTop,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                weather,
                style: GoogleFonts.aleo(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                phrase,
                style: GoogleFonts.abhayaLibre(
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _IconIndicator extends StatelessWidget {
  const _IconIndicator({
    Key? key,
    required this.iconData,
    required this.size,
  }) : super(key: key);

  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                iconData,
                size: size,
                color: const Color(0xFF9E3773).withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ContainerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 120),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              '24.09.2011-24.09.2022',
              style: GoogleFonts.abhayaLibre(
                fontSize: 19,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              '11 tuổi',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: GoogleFonts.aleo(
                fontSize: 22,
                color: const Color(0xFFffc750).withOpacity(0.8),
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              '',
              style: GoogleFonts.lato(
                fontSize: 18,
                color: const Color(0xFFF4A5CD),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Sun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 25,
            spreadRadius: 20,
          ),
        ],
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/img.jpeg'),
      ),
    );
  }
}
