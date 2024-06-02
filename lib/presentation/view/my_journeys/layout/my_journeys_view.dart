import 'package:flutter/material.dart';
import 'package:rebooked_app/presentation/view/my_journeys/layout/body.dart';

class MyJourneysView extends StatelessWidget {
  const MyJourneysView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:MyJourneyBody(),
    );
  }
}
