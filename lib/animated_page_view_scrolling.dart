library animated_page_view_scrolling;

import 'package:flutter/material.dart';

import 'image_card.dart';

class AnimatedPageViewScrolling extends StatefulWidget {
  final double? viewportFraction;
  final List<dynamic> myModel;
  final double? heightItem;
  final double heightMainPageView;

  const AnimatedPageViewScrolling(
      {Key? key,
      this.viewportFraction,
      required this.myModel,
      this.heightItem,
      required this.heightMainPageView})
      : super(key: key);

  @override
  State<AnimatedPageViewScrolling> createState() => _AnimatedPageViewScrollingState();
}

class _AnimatedPageViewScrollingState extends State<AnimatedPageViewScrolling> {
  late final PageController pageController =
      PageController(viewportFraction: widget.viewportFraction ?? 0.90);
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightMainPageView,
      child: PageView.builder(
        padEnds: false,
        controller: pageController,
        itemCount: widget.myModel.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          bool active = index == currentpage;
          return Opacity(
            opacity: currentpage == index ? 1.0 : 0.5,
            child: ImageCard(
              active: active,
              index: index,
              myModel: widget.myModel[index],
              height: widget.heightItem,
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentpage != position) {
        setState(() {
          currentpage = position;
        });
      }
    });
  }
}
