// import '/scr/login/signin_page.dart';
// import '/scr/profile/profile.dart';
// import '/utils/tokens.dart';
// import '/utils/urlname_navigation.dart';
// import 'package:flutter/material.dart';

// import 'static_data.dart';

// class DrawerPage extends StatelessWidget {
//   const DrawerPage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Drawer(
//         // backgroundColor: Colors.red,
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               currentAccountPicture: const CircleAvatar(
//                   backgroundImage: AssetImage('assets/images/yug.jpg')),
//               accountName: const Text(
//                 "AstroKapish",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               accountEmail: const Text(
//                 "astro123@gmail.com",
//                 style: TextStyle(color: Colors.black),
//               ),
//               onDetailsPressed: () {
//                 navigationPush(context, const ProfilePage());
//               },
//               arrowColor: Colors.black,
//               decoration: const BoxDecoration(color: Colors.white),
//             ),
//             // Row(
//             //   children: [
//             //     Padding(
//             //       padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
//             //       child: InkWell(
//             //         onTap: () {
//             //           navigationPush(context, const ProfilePage());
//             //         },
//             //         child: const CircleAvatar(
//             //           radius: 25,
//             //           child: Icon(Icons.person),
//             //         ),
//             //       ),
//             //     ),
//             //     const Text(
//             //       "User",
//             //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             //     )
//             //   ],
//             // ),
//             for (int i = 0; i < drawerItemLst.length; i++)
//               DrawerListTile(
//                   icon: drawerItemLst[i]['icon'],
//                   text: drawerItemLst[i]['text'],
//                   child: drawerItemLst[i]['child']),
//             DrawerListTile(
//               icon: const Icon(Icons.logout),
//               text: "LogOut",
//               ontap: () => {
//                 logout(),
//                 navigationPushReplacement(context, const SignInPage())
//               },
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 10),
//               width: double.infinity,
//               height: 0.5,
//               color: Colors.black,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DrawerListTile extends StatelessWidget {
//   final Icon icon;
//   final String text;
//   final Function()? ontap;
//   final Widget? child;
//   const DrawerListTile(
//       {super.key,
//       required this.icon,
//       required this.text,
//       this.ontap,
//       this.child});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       child: ListTile(
//         // minVerticalPadding: 20.0,
//         minLeadingWidth: 10,
//         dense: true,
//         leading: icon,
//         title: Text(
//           text,
//           style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
//         ),
//         onTap: ontap ?? () => navigationPush(context, child!),
//       ),
//     );
//   }
// }
