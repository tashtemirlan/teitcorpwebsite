import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:seo/seo.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  static const _blue = Color.fromRGBO(21, 126, 254, 1);
  static const _bg   = Color.fromRGBO(250, 250, 250, 1);

  @override
  Widget build(BuildContext context) {
    final width  = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isMobile = width <= 425;
    final dw = isMobile ? width / 425 : width / 1440;

    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: Scaffold(
        backgroundColor: _bg,
        body: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              // ── Navbar ──────────────────────────────────────────────────
              SizedBox(height: dw * 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: isMobile ? dw * 20 : (width - 1128 * dw) / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => context.go('/home'),
                        child: Row(children: [
                          Text('{', style: TextStyle(fontFamily: 'JustAnother', fontSize: (isMobile ? 28 : 42) * dw, fontWeight: FontWeight.bold, color: _blue)),
                          FaIcon(FontAwesomeIcons.check, size: (isMobile ? 20 : 32) * dw, color: _blue),
                          Text('}', style: TextStyle(fontFamily: 'JustAnother', fontSize: (isMobile ? 28 : 42) * dw, fontWeight: FontWeight.bold, color: _blue)),
                          SizedBox(width: dw * 8),
                          Container(width: dw * 2, height: dw * (isMobile ? 28 : 38),
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5))),
                          SizedBox(width: dw * 10),
                          Text('TEIT CORP', style: TextStyle(fontFamily: 'CompanyFont', fontSize: (isMobile ? 18 : 32) * dw, fontWeight: FontWeight.bold)),
                        ]),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => context.go('/home'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dw * 8)),
                        padding: EdgeInsets.symmetric(horizontal: dw * 20, vertical: dw * 10),
                      ),
                      child: Text('Home', style: TextStyle(fontFamily: 'TextFont', fontSize: dw * (isMobile ? 14 : 20), fontWeight: FontWeight.w500, color: Colors.white)),
                    ),
                  ],
                ),
              ),
              // ── Body ────────────────────────────────────────────────────
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Decorative diamond (Flutter-inspired)
                      SizedBox(
                        width: dw * (isMobile ? 80 : 120),
                        height: dw * (isMobile ? 80 : 120),
                        child: CustomPaint(painter: _DiamondPainter()),
                      ),
                      SizedBox(height: dw * 32),
                      Seo.text(
                        text: '404',
                        style: TextTagStyle.h1,
                        child: Text('404',
                          style: TextStyle(
                            fontFamily: 'TextFont',
                            fontSize: dw * (isMobile ? 80 : 120),
                            fontWeight: FontWeight.w900,
                            color: _blue,
                            height: 1.0,
                          )),
                      ),
                      SizedBox(height: dw * 16),
                      Text('Page Not Found',
                        style: TextStyle(
                          fontFamily: 'TextFont',
                          fontSize: dw * (isMobile ? 22 : 32),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                      SizedBox(height: dw * 12),
                      Text("The page you're looking for doesn't exist or has been moved.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'TextFont',
                          fontSize: dw * (isMobile ? 13 : 17),
                          color: const Color.fromRGBO(100, 100, 100, 1),
                        )),
                      SizedBox(height: dw * 40),
                      ElevatedButton.icon(
                        onPressed: () => context.go('/home'),
                        icon: FaIcon(FontAwesomeIcons.house, size: dw * (isMobile ? 14 : 18), color: Colors.white),
                        label: Text('Back to Home',
                          style: TextStyle(fontFamily: 'TextFont', fontSize: dw * (isMobile ? 15 : 20), fontWeight: FontWeight.w600, color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _blue,
                          padding: EdgeInsets.symmetric(horizontal: dw * 32, vertical: dw * 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dw * 10)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Simple diamond decoration matching Flutter's logo shape
class _DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(21, 126, 254, 1)
      ..style = PaintingStyle.fill;

    final paintLight = Paint()
      ..color = const Color.fromRGBO(21, 126, 254, 0.35)
      ..style = PaintingStyle.fill;

    final w = size.width;
    final h = size.height;

    // Top diamond
    final top = Path()
      ..moveTo(w * 0.5, 0)
      ..lineTo(w, h * 0.38)
      ..lineTo(w * 0.5, h * 0.55)
      ..lineTo(0, h * 0.38)
      ..close();

    // Bottom diamond (offset, lighter)
    final bottom = Path()
      ..moveTo(w * 0.5, h * 0.45)
      ..lineTo(w, h * 0.83)
      ..lineTo(w * 0.5, h)
      ..lineTo(0, h * 0.83)
      ..close();

    canvas.drawPath(top, paint);
    canvas.drawPath(bottom, paintLight);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
