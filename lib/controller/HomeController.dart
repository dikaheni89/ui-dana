import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:ui_dana/page/HomePage.dart';

class HomeController extends State<HomePage> {
  static late HomeController instance;
  late HomePage view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}