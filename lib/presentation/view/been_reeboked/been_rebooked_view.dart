import 'package:flutter/material.dart';
import 'package:rebooked_app/presentation/view/been_reeboked/layout/body.dart';

class BeenRebookedView extends StatelessWidget {
  const BeenRebookedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BeenRebookedBody(),
    );
  }
}
