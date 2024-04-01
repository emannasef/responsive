import 'package:flutter/material.dart';
import 'package:responsive/features/home/views/home_body_view.dart';
import 'package:responsive/features/drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width - 32 < 900
          ? AppBar(
              backgroundColor: Colors.black,
              leading: GestureDetector(
                onTap: () => _scaffoldKey.currentState!.openDrawer(),
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: const HomeBodyView(),
    );
  }
}

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//     required GlobalKey<ScaffoldState> scaffoldKey,
//   }) : _scaffoldKey = scaffoldKey;

//   final GlobalKey<ScaffoldState> _scaffoldKey;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrains) {
//       return constrains.maxWidth < 900
//           ? AppBar(
//               backgroundColor: Colors.black,
//               leading: GestureDetector(
//                 onTap: () => _scaffoldKey.currentState!.openDrawer(),
//                 child: const Icon(
//                   Icons.menu,
//                   color: Colors.white,
//                 ),
//               ),
//             )
//           : const SizedBox.shrink();
//     });
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(56);
// }
