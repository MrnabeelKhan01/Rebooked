import 'package:flutter/material.dart';

import 'layout/body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ProfileBody(),
    );
  }
}
