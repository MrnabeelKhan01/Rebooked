import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebooked_app/configurations/frontend_configs.dart';
import 'package:rebooked_app/presentation/elements/custom_text.dart';
import 'package:rebooked_app/presentation/view/lets_connect/layout/home_address.dart';
import 'package:rebooked_app/presentation/view/profile/profile_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../my_journeys/layout/my_journeys_view.dart';

class BottomBarView extends StatefulWidget {
  static const title = 'salomon_bottom_bar';

  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  var _currentIndex = 0;
  final List<Widget> _buildScreens = [
    const MyJourneysView(),
    CustomText(text: "Notificaion"),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, right: 18, left: 18),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: FrontendConfigs.kAppPrimaryColor),
          child: SalomonBottomBar(
            unselectedItemColor: Colors.white,
            selectedItemColor:FrontendConfigs.kAppPrimaryColor,
            selectedColorOpacity: 1,
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/bottom/btm_one.svg",
                  color: _currentIndex == 0
                      ? FrontendConfigs.kAppPrimaryColor
                      : Colors.white,
                ),
                title:  Text(
                  "My Ticket",
                  style:TextStyle(color: _currentIndex == 0
                      ? FrontendConfigs.kAppPrimaryColor
                      : Colors.white,),
                ),
                selectedColor: Colors.white,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Image.asset(
                  "assets/icons/bottom/noti.png",
                  height:24,
                  color: _currentIndex == 1
                      ?FrontendConfigs.kAppPrimaryColor
                      : Colors.white
                ),
                title:  Text(
                  "My Notifications",
                  style:TextStyle( color: _currentIndex == 1
                      ?FrontendConfigs.kAppPrimaryColor
                      : Colors.white),
                ),
                selectedColor: Colors.white,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/bottom/btm_three.svg",
                   height:24,
                   color: _currentIndex == 2
                        ?FrontendConfigs.kAppPrimaryColor
                        : Colors.white
                ),
                title:  Text(
                  "My Profile",
                  style:TextStyle( color: _currentIndex == 2
                      ?FrontendConfigs.kAppPrimaryColor
                      : Colors.white),
                ),
                selectedColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
