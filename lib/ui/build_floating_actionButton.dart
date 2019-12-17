import 'package:flutter/material.dart';
import 'package:flutter_foodapp/constant/colors.dart';

class BuildFloatingActionButton extends StatelessWidget {
  const BuildFloatingActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Icon tapped");
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 12),
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.orangeColor,
                AppColors.orangeLightColor.withOpacity(0.8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: AppColors.orangeColor,
                  blurRadius: 12,
                  offset: Offset(0, 5)),
            ]),
        child: Icon(
          IconData(0xe800, fontFamily: "Icons"),
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }
}
