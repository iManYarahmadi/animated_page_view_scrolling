
import 'package:flutter/material.dart';


class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, this.active, this.index, required this.myModel, required this.height})
      : super(key: key);

  final bool? active;
  final int? index;
  final dynamic myModel;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 13 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;
    return Column(
      children: [
        SizedBox(
          height: height,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutQuint,
            margin: EdgeInsets.only(
              top: top,
              bottom: 0,
              right: 15.5,
              left: active! ? 28 : 0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                    color: Colors.black87.withOpacity(0.3),
                    blurRadius: blur,
                    offset: Offset(0, offset)),
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${myModel!.image}')),
            ),
           
          ),
        ),
      ],
    );
  }
}
