import 'package:dave_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgMaterialsymbolshomeLightGreen900,
      type: BottomBarEnum.Materialsymbolshomelightgreen900,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMaterialsymbol,
      type: BottomBarEnum.Materialsymbol,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcroundmessage,
      type: BottomBarEnum.Icroundmessage,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconoirprofilecircleBlack900,
      type: BottomBarEnum.Iconoirprofilecircleblack900,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA7001c,
        border: Border.all(
          color: ColorConstant.black9002b,
          width: getHorizontalSize(
            1,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                39,
              ),
              width: getSize(
                39,
              ),
              color: ColorConstant.black900,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(
                39,
              ),
              width: getSize(
                39,
              ),
              color: ColorConstant.lightGreen900,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Materialsymbolshomelightgreen900,
  Materialsymbol,
  Icroundmessage,
  Iconoirprofilecircleblack900,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.type,
  });

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
