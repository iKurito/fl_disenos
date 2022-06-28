import 'package:flutter/material.dart';

import 'package:fl_disenos/src/widgets/background.dart';
import 'package:fl_disenos/src/widgets/page_title.dart';
import 'package:fl_disenos/src/widgets/card_table.dart';
import 'package:fl_disenos/src/widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          const Background(),
          // Home Body
          _HomeBody()
        ],
      ),
      // bottomNavigationBar
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Titulos
          PageTitle(),
          // Card Table
          CardTable()
        ],
      )
    );
  }
}