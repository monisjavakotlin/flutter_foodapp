import 'package:flutter/material.dart';
import 'package:flutter_foodapp/ui/build_bottom_navigation_bar.dart';
import 'package:flutter_foodapp/ui/build_floating_actionButton.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabController;
  PageController _pageController;
  GoogleMapController _mapController;
  int _tabbarIndex = 0;
  String _selectedLocation = "Istanbul, TR";
  bool selectedColor = true;
  var currentLocation;
  bool showMaps = false;

  List<String> _location = ["Newyork, NY", "Dubai", "Istanbul, TR"];

  @override
  void initState() {
    Geolocator().getCurrentPosition().then((current) {
      setState(() {
        currentLocation = current;
        showMaps = true;
      });
    });

    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    _tabController =
        TabController(length: 4, vsync: this, initialIndex: _tabbarIndex);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFloatingActionButton(),
      bottomNavigationBar:
          BuildBottomNavigationBar(tabController: _tabController),
    );
  }
}
