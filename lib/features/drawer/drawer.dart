import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive/features/drawer/models.dart/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> drawerList = [
    DrawerItemModel(title: "DASHBOARD", icon: Icons.home),
    DrawerItemModel(title: "Settings", icon: Icons.settings)
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 48,
            ),
          ),
          CustomDrawerListView(drawerList: drawerList)
        ],
      ),
    );
  }
}

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({
    super.key,
    required this.drawerList,
  });

  final List<DrawerItemModel> drawerList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: drawerList.length,
        itemBuilder: (ctx, index) {
          return CustomDrawerItem(
            drawerItemModel: drawerList[index],
          );
        });
  }
}

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const CustomDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.icon),
      title: Text(drawerItemModel.title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
