import 'package:flutter/material.dart';
import 'package:sw2_parcial1_movil/theme/app_theme.dart';


class HeaderLogin extends StatelessWidget
{

const HeaderLogin({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context)
 {
    return SizedBox(
        height: 250,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderLoginPainter(),
        ),
    );
  }
}

class _HeaderLoginPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size)
  {
    final paint = Paint();
    paint.color = AppTheme.primaryColor;
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 1.0);
    path.lineTo( size.width * 0.2, size.height * 0.8);
    path.lineTo( size.width, size.height * 1.0);
    path.lineTo( size.width, 0);


    canvas.drawPath(path, paint); 
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}

class HeaderSignUp extends StatelessWidget
{
const HeaderSignUp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context)
 {
    return SizedBox(
        height: 250,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderSignUpPainter(),
        ),
    );
  }
}

class _HeaderSignUpPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size)
  {
    final paint = Paint();
    paint.color = AppTheme.primaryColor;
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(0, size.height * 1.0);
    path.lineTo( size.width * 0.8, size.height * 0.8);
    path.lineTo( size.width, size.height * 1.0);
    path.lineTo( size.width, 0);


    canvas.drawPath(path, paint); 
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}