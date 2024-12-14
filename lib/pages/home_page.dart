import 'package:flutter/material.dart';
import 'package:fs_food_app/components/my_current_location.dart';
import 'package:fs_food_app/components/my_description_box.dart';
import 'package:fs_food_app/components/my_drawer.dart';
import 'package:fs_food_app/components/my_sliver_app_bar.dart';
import 'package:fs_food_app/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverAppBar(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  // MY current location
                  const MyCurrentLocation(),
                  // Description box
                  const MyDescriptionBox(),
                ],
              ),
            )
          ],
          body: Container(
            color: Colors.blue,
          ),
        ));
  }
}
