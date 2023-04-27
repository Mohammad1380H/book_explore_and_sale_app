
import 'package:book_explore_and_sale_app/res/colors.dart';
import 'package:book_explore_and_sale_app/res/dimens.dart';
import 'package:book_explore_and_sale_app/view/explore_screen.dart';
import 'package:book_explore_and_sale_app/view/my_library_screen.dart';
import 'package:flutter/material.dart';


import '../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar(textTheme),
      body: IndexedStack(
        index: selectedIndex,
        children: [const MyLibraryScreen(), ExploreScreen()],
      ),
      bottomNavigationBar: bottomNavigationBar(),
    ));
  }

  AppBar appBar(TextTheme textTheme) {
    return AppBar(
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
      title: TextField(
        style: textTheme.titleLarge,
        decoration: InputDecoration(
          contentPadding:  EdgeInsets.symmetric(vertical: Dimens.smallSize,horizontal: Dimens.mediumSize),
            filled: true,
            fillColor: ColorProject.serchBarColor,
            suffixIconColor: ColorProject.serchIcon,
            suffixIcon: ImageIcon(Assets.icon.serchIcon.provider()),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: ColorProject.serchBarColor, width: 1),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      elevation: 30,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: selectedIndex == 0
              ? Assets.icon.selectedLibrary.svg()
              : Assets.icon.unselectedLibrary1.svg(),
          label: 'My Library',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 1
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
    );
  }
}
