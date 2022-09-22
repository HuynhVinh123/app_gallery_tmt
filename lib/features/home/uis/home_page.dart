import 'package:flutter/material.dart';
import 'package:flutter_showcase_nullsafety/flutter_showcase.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:weather_icons/weather_icons.dart';

class ShowcaseWeatherTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Showcase(
      title: 'Weather Timeline',
      app: _WeatherTimelineApp(),
      description: 'Keep it up with the weather with this shining timeline.',
      template: SimpleTemplate(reverse: false),
      theme: TemplateThemeData(
        frameTheme: FrameThemeData(
          statusBarBrightness: Brightness.dark,
          frameColor: Colors.white.withOpacity(0.7),
        ),
        flutterLogoColor: FlutterLogoColor.white,
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFFDB84B1),
        titleTextStyle: GoogleFonts.lato(
          fontSize: 60,
          fontWeight: FontWeight.w900,
          color: Colors.white.withOpacity(0.7),
        ),
        descriptionTextStyle: GoogleFonts.lato(
          fontSize: 24,
          height: 1.2,
          color: Colors.white.withOpacity(0.7),
        ),
        buttonTextStyle: TextStyle(
          color: Colors.white.withOpacity(0.7),
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        buttonIconTheme: const IconThemeData(color: Colors.white),
        buttonTheme: ButtonThemeData(
          buttonColor: const Color(0xFF9E3773),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
}

class _WeatherTimelineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather TimelineTile',
      builder: Frame.builder,
      home: _WeatherTimeline(),
    );
  }
}

class _WeatherTimeline extends StatelessWidget {
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
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: ListView(
              children: <Widget>[
                TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.3,
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(
                    width: 70,
                    height: 70,
                    indicator: _Sun(),
                  ),
                  beforeLineStyle: LineStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                  endChild: _ContainerHeader(),
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.cloudy,
                    size: 20,
                  ),
                  hour: '2011',
                  weather: 'Giai đoạn khởi đầu',
                  temperature: '',
                  phrase:
                      'Bắt đầu từ 2011, TMT hoạt động theo hình thức sử dụng công nghệ để giải quyết khó khăn của từng khách hàng.',
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.night_alt_rain_mix,
                    size: 20,
                  ),
                  hour: '2018',
                  weather: 'Phát triển phần mềm quản lý bán hàng',
                  temperature: '',
                  phrase: '',
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.sunset,
                    size: 20,
                  ),
                  hour: '2019',
                  weather: 'Phát triển đa lĩnh vực phần mềm',
                  temperature: '',
                  phrase:
                      'Cuối năm 2018, với tâm nguyện “Kiến tạo thành công” TMT bắt đầu áp dụng những kinh nghiệm trong phát triển đa lĩnh vực phần mềm mang lại giải pháp tối ưu cho nhà bán hàng.',
                ),
                _buildTimelineTile(
                  indicator: const _IconIndicator(
                    iconData: WeatherIcons.night_alt_rain_mix,
                    size: 20,
                  ),
                  hour: '2021',
                  weather:
                      'Bứt phá vượt trội với nhiều sản phẩm công nghệ và đạt giải Sao Khuê',
                  temperature: '',
                  phrase:
                      'Các sản phẩm của TMT được vinh danh nhận giải Sao Khuê 2021 và được giới công nghệ, báo chí truyền thông (HTV7 công nghệ thời đại 4.0, Vnexpress, Genk, Dantri,...)',
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
      backgroundColor: Colors.transparent,
      title: Text(
        'Happy Birthday TMT',
        style: GoogleFonts.jua(
          color: const Color(0xFF8e0000),
          fontWeight: FontWeight.bold,
          fontSize: 20,
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
        alignment: const Alignment(0.0, -0.50),
        child: Text(
          hour,
          style: GoogleFonts.lato(
            fontSize: 18,
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      endChild: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 10,
          top: 10,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              weather,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              temperature,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              phrase,
              style: GoogleFonts.lato(
                fontSize: 14,
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.normal,
              ),
            )
          ],
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              '24.09.2011-24.09.2022',
              style: GoogleFonts.jua(
                fontSize: 18,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              '11 tuổi',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: GoogleFonts.jua(
                fontSize: 18,
                color: const Color(0xFF4A448F).withOpacity(0.8),
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
        backgroundImage: AssetImage('assets/app/img.png'),
      ),
    );
  }
}
