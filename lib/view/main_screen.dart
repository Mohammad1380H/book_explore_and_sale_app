import 'package:book_explore_and_sale_app/components/custom_widgets.dart';
import 'package:book_explore_and_sale_app/res/dimens.dart';
import 'package:book_explore_and_sale_app/fake_data.dart';
import 'package:book_explore_and_sale_app/model/book_model.dart';
import 'package:book_explore_and_sale_app/view/explore_screen.dart';
import 'package:book_explore_and_sale_app/view/my_library_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: ImageIcon(
          Assets.icon.hamberIcon.provider(),
          color: Colors.black,
        ),
        actions: [
          ImageIcon(
            Assets.icon.minesIcon.provider(),
            color: Colors.black,
          ),
          SizedBox(
            width: Dimens.mediumSize,
          ),
          ImageIcon(
            Assets.icon.notifIcon.provider(),
            color: Colors.black,
          ),
          SizedBox(
            width: Dimens.vLargSize,
          )
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children:  [const MyLibraryScreen(),ExploreScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: selectedIndex == 0
                ? Assets.icon.selectedLibrary.svg()
                : Assets.icon.unselectedLibrary1.svg(),
            label: 'My Library',
          ),
          BottomNavigationBarItem(
            icon: 
              selectedIndex == 1
                  ? Assets.icon.selectedFluentBook.svg()
                  : Assets.icon.unselectedFluentBook.svg(),
           
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Assets.icon.unselectedSale.svg(),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Assets.icon.unselectedCommunity.svg(),
            label: 'Community',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        selectedIconTheme: IconThemeData(color: Colors.amber[800]),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    ));
  }
}
