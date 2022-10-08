import 'package:chat_app/presentation/resources/color_manager.dart';
import 'package:chat_app/presentation/resources/font_manager.dart';
import 'package:chat_app/presentation/resources/strings-manager.dart';
import 'package:chat_app/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class TitleSearchBar extends StatelessWidget {
  const TitleSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [TitleWidget(screenWidth:screenWidth,), SearchIconButtonWidget(screenWidth: screenWidth,)],
    );
  }
}

class TitleWidget extends StatelessWidget {
  final double? screenWidth;
  const TitleWidget({Key? key, required this.screenWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: (25 / 428) * screenWidth!,
        ),
        Text(
          StringManager.titleUsersScreen,
          style: getSemiBoldStyle(
              color: ColorManager.white, fontSize: FontSizeManger.s28),
        ),
      ],
    );
  }
}

class SearchIconButtonWidget extends StatelessWidget {
  final double? screenWidth;
  const SearchIconButtonWidget({Key? key, required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        SizedBox(
          width: (26 / 428) * screenWidth!,
        )
      ],
    );
  }
}
