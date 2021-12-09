// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, unused_local_variable, no_logic_in_create_state, unused_element

import 'package:flutter/material.dart';
import 'package:haven_rental/widgets/app_bottom_navigation.dart';

// ignore: camel_case_types
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(child: SizedBox()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/svg/menu.svg"),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/images/dp.png"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Let's Find Your\nApartments",
                  style: TextStyle(
                    fontSize: 26.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: ScreenUtil().setHeight(59.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 251, 251, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search your apartments...",
                              hintStyle: GoogleFonts.inter(
                                color: Color.fromRGBO(153, 163, 196, 1),
                              )),
                        ),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(50.0),
                        width: ScreenUtil().setWidth(50.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          FlutterIcons.search1_ant,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: StaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: StaticData.properties.length,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: StaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: StaticData.properties.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
