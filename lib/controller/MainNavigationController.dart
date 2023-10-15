import 'package:flutter/material.dart';
import 'package:ui_dana/components/MainNavigationView.dart';

class MainNavigationController extends State<MainNavigationView> {
  static late MainNavigationController instance;
  late MainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectIndex = 0;
  updateIndex(int newIndex) {
    selectIndex = newIndex;
    setState(() {});
  }
}