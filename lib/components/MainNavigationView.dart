// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_dana/controller/MainNavigationController.dart';
import 'package:ui_dana/page/HomePage.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;
    
    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectIndex,
          children: [
            const HomePage(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.purple,
            )
          ],
        ),
        floatingActionButton: Transform.translate(
          offset: const Offset(0, 12),
          child: Transform.scale(
            scale: 1.2,
            child: ClipOval(
              child: FloatingActionButton(
                backgroundColor: Colors.blue.shade500,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code_scanner_outlined,
                      size: 36.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.payments_outlined,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.payments_outlined,
                color: Colors.black,
              ),
              label: "Home"
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.history_edu,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.history_edu,
                color: Colors.black,
              ),
              label: "History"
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.history_edu,
                color: Colors.transparent,
              ),
              label: ""
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.black,
              ),
              label: "Wallet"
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.black,
              ),
              label: "Me"
            ),
          ],
        )
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => MainNavigationController();
}
