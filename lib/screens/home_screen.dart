import 'package:flutter/material.dart';
import 'package:sw2_parcial1_movil/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const  SidebarDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomeScreen'),
      ),
      body: const Center(
         child: Text('HomeScreen'),
      ),
    );
  }
}