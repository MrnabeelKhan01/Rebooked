import 'package:flutter/material.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/add_credict_card.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/lets_connect.dart';

import '../../elements/custom_appbar.dart';
import 'layout/add_payment.dart';
import 'layout/home_address.dart';

class LetsConnectView extends StatelessWidget {
  const LetsConnectView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppBar(percentage: 0,context),
      body: const LetsConnectBody(),
    );
  }
}
