import 'package:astroweb_cus/utils/common_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Home"),
              ),
              ListTile(
                title: Text("Horoscope"),
              ),
              ListTile(
                title: Text("Free Kundli"),
              ),
              ListTile(
                title: Text("Kundli Matching"),
              ),
              ListTile(
                title: Text("AstroMall"),
              ),
              ListTile(
                title: Text("Blog"),
              ),
              ListTile(
                title: Text("Contect"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: Colors.white,

          // bottom: PreferredSize(
          //     preferredSize: const Size.fromHeight(48.0),
          //     child: Container(
          //       width: width(context),
          //       color: Colors.amber,
          //       child: Center(
          //         child: const TabBar(
          //           labelColor: Colors.black,
          //           isScrollable: true,
          //           indicatorColor: Colors.amber,
          //           tabs: [
          //             Tab(
          //               text: 'Home',
          //               // icon: Text(
          //               //   "data",
          //               //   style: TextStyle(fontSize: 5),
          //               // ),
          //             ),
          //             Tab(text: 'Horoscope'),
          //             Tab(text: 'Free Kundli'),
          //             Tab(text: 'Kundli Matching'),
          //             Tab(text: 'AstroMall'),
          //             Tab(text: 'Blog'),
          //             Tab(text: 'Contect'),
          //           ],
          //         ),
          //       ),
          //     )),
          title: Row(
            children: [
              Image.asset(
                "images/logo.jpg",
                fit: BoxFit.fitWidth,
                height: 500,
                width: width(context) / 3,
              ),
              Spacer(),
              ChatBtn(
                  btnWidth: 200,
                  btnName: "Chat With Astrologer",
                  onpressed: () {}),
              widthSizedBox(20.0),
              ChatBtn(
                  btnWidth: 200,
                  btnName: "Call With Astrologer",
                  onpressed: () {}),
              widthSizedBox(20.0),
              ChatBtn(
                  backgroundColor: Colors.amberAccent,
                  textColor: Colors.black,
                  borderColor: Colors.black54,
                  btnName: "Login",
                  onpressed: () {}),
              widthSizedBox(100.0)
            ],
          ),
        ),
        body: Center(child: Text("Under Constuctor..........")),
        // body: TabBarView(children: [
        //   Center(
        //     child: Text("1"),
        //   ),
        //   Center(
        //     child: Text("2"),
        //   ),
        //   Center(
        //     child: Text("3"),
        //   ),
        //   Center(
        //     child: Text("4"),
        //   ),
        //   Center(
        //     child: Text("5"),
        //   )
        // ]),
      ),
    );
  }
}

// class BaseAppBar extends StatelessWidget {
//   const BaseAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       titleSpacing: 150,
//       backgroundColor: Colors.white,
//       title: Image.asset(
//         "images/logo.jpg",
//         fit: BoxFit.fitWidth,
//         height: 300,
//         width: width(context) / 4,
//       ),
//       toolbarHeight: 80,
//     );
//   }
// }
