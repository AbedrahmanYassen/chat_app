
import 'package:flutter/cupertino.dart';

class UserPictureData {
  final double width;
  final double height;

  UserPictureData(
      {required this.width,
        required this.height,
        required this.imageUrl,
        required this.boxShadow,
        required this.borderRadius});

  final String imageUrl;
  final List<BoxShadow> boxShadow;
  final double borderRadius;
}
