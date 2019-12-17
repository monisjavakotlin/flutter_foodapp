import 'package:flutter/material.dart';
import 'package:flutter_foodapp/constant/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildBottomNavigationBar extends StatelessWidget {
  const BuildBottomNavigationBar({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TabBar(
          labelColor: AppColors.orangeColor,
          unselectedLabelColor: AppColors.blackColor.withOpacity(0.55),
          indicatorColor: AppColors.orangeColor,
          indicatorWeight: 3,
          indicator: UnderlineTabIndicator(
              insets: EdgeInsets.only(bottom: 46),
              borderSide: BorderSide(color: AppColors.orangeColor, width: 3)),
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.binoculars),
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.shoppingCart),
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.userAlt),
            ),
          ]),
    );
  }
}
