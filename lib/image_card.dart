import 'package:animated_page_view_scrolling/enum.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    this.active,
    this.index,
    required this.myModel,
    required this.height,
    required this.imageMode,
  }) : super(key: key);

  final bool? active;
  final int? index;
  final dynamic myModel;
  final double? height;
  final ImageMode imageMode;

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 13 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;

    Widget getImage() {
      switch (imageMode) {
        case ImageMode.asset:
          return Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/${myModel!.image}'),
          );
        case ImageMode.network:
          return CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: myModel!.image,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
              ),
              child: const SpinKitThreeBounce(
                color: Colors.white,
                size: 30,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
        case ImageMode.svg:
          SvgPicture.asset(
            'assets/images/${myModel!.image}',
            fit: BoxFit.cover,
          );
          break;
      }
      return const Image(image: AssetImage('assets/images/mainp1.png'));
    }

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
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87.withOpacity(0.2),
                  blurRadius: blur,
                  offset: Offset(0, offset),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: getImage(),
            ),
          ),
        ),
      ],
    );
  }
}
