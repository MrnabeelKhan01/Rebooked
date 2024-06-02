import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:rebooked_app/presentation/view/profile/profile_view.dart';

import '../../../configurations/frontend_configs.dart';

class Persistant extends StatelessWidget {
  Persistant({super.key});
  final PersistentTabController _controller= PersistentTabController(initialIndex: 0);
   List<Widget> _buildScreens() {
     return [
      ProfileView(),
      ProfileView(),
      ProfileView(),
     ];
   }
   List<PersistentBottomNavBarItem> _navBarsItems() {
     return [
       PersistentBottomNavBarItem(
         icon: Icon(CupertinoIcons.home),
         title: ("Home"),
         activeColorPrimary: CupertinoColors.activeBlue,
         inactiveColorPrimary: CupertinoColors.systemGrey,
       ),
       PersistentBottomNavBarItem(
         icon: Icon(CupertinoIcons.settings),
         title: ("Settings"),
         activeColorPrimary: CupertinoColors.activeBlue,
         inactiveColorPrimary: CupertinoColors.systemGrey,
       ),
       PersistentBottomNavBarItem(
         icon: Icon(CupertinoIcons.settings),
         title: ("Settings"),
         activeColorPrimary: CupertinoColors.activeBlue,
         inactiveColorPrimary: CupertinoColors.systemGrey,
       ),
     ];
   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom:18.0),
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: false,
          backgroundColor: FrontendConfigs.kAppPrimaryColor, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: false, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(100.0),
            colorBehindNavBar: FrontendConfigs.kAppPrimaryColor,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
        ),
      ),
    );
  }
}