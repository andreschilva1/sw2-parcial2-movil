import 'package:flutter/material.dart';
import 'package:sw2_parcial1_movil/theme/app_theme.dart';


class LogoHeader extends StatelessWidget 
{
  const LogoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: MediaQuery.of(context).size.width * 0.38,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
                BoxShadow(blurRadius: 10, color: Colors.black26)
          ]
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text('ActiFij', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.primaryColor))
        ),
      ),
    );
  }
}