import 'package:flutter/material.dart';

import '../../utils/common_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          "https://img.freepik.com/free-photo/mystical-numerology-scene_52683-107762.jpg?w=1380&t=st=1696179432~exp=1696180032~hmac=6624ca23628b8ff6eb1535c6891c867ba17023cc34c0e652fed5f90ca4958ae2",
          width: width(context),
          height: 400,
          fit: BoxFit.fill,
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 150, right: 150, bottom: 20),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 10.0,
                mainAxisExtent: 150,
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 150,
                  // width: 1000,
                  child: InkWell(
                      // onTap: () => navigationPush(
                      //     context,
                      //     SellerDetails(
                      //       senderId: widget.senderId,
                      //       prod: prodList[i],
                      //     )),
                      child: Card(
                          elevation: 2,
                          margin: const EdgeInsets.only(
                            top: 5.0,
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: ProdCard())),
                );
              }),
        )
      ],
    );
  }
}

class ProdCard extends StatelessWidget {
  const ProdCard({super.key, this.onTap, this.prod, this.senderId});
  final dynamic onTap;
  final dynamic prod;
  final String? senderId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProdPic(),
        ProdMiddleItem(),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40),
                child: Image.asset(
                  "images/approved.png",
                  width: 30,
                  height: 30,
                ),
              ),
              heightSizedBox(35.0),
              ChatBtn(btnName: 'Chat', onpressed: () {}
                  // navigationPush(
                  //     context,
                  //     ChatDetailPage(
                  //         senderId: senderId,
                  //         receiverId: prod['_id'],
                  //         name: prod['name'],
                  //         isOnline: prod['is_busy'])),
                  ),
              // const Text(
              //   "wait 5 mins",
              //   style: TextStyle(fontSize: 10, color: Colors.red),
              // )
            ],
          ),
        ),
      ],
    );
  }
}

class ProdPic extends StatelessWidget {
  // final dynamic prod;

  const ProdPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ComnCircleAvtar(
            radius1: 45,
            radius2: 44,
            child: ClipOval(
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.amber,
              ),
            ),
          ),

          // ComnCircleAvtar(
          //   radius1: 37,
          //   radius2: 36.5,
          //   child: prod['pic'].isNotEmpty
          //       ? Image.network(prod['picUrl'].toString())
          //       : const Icon(
          //           Icons.person,
          //           size: 40,
          //         ),
          // ),
          heightSizedBox(20.0),
          Text(
            "Order",
            // " ${prod['orders']} orders",
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class ProdMiddleItem extends StatelessWidget {
  // final dynamic prod;
  const ProdMiddleItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: SizedBox(
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "AstroKapish",
              // prod['name'],
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            heightSizedBox(7.0),
            Text(
              "Vedic, KP, Tarot, vedic",
              // "${prod['allSkills'].join(', ')}",
              // softWrap: true,
              style: const TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            heightSizedBox(7.0),
            Text(
              "Hindi,rajasthani",
              // "${prod['langauge'].join(', ')}",
              style: const TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            heightSizedBox(7.0),
            Text(
              "Exp. 5 Years",
              // "Exp: ${prod['experience']} Years",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 15),
            ),
            heightSizedBox(7.0),
            Text(
              "₹ 0",
              // "₹ ${prod['priceperMin']}/min",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComnCircleAvtar extends StatelessWidget {
  final double? radius1, radius2;
  final Color? bckcolor1, bckcolor2;
  final double? size;
  final Widget? child;

  const ComnCircleAvtar(
      {super.key,
      this.radius1,
      this.radius2,
      this.bckcolor1,
      this.bckcolor2,
      this.size,
      this.child});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius1 ?? 38.0,
      backgroundColor: bckcolor1 ?? Colors.amber,
      child: CircleAvatar(
        radius: radius2 ?? 37.5,
        // foregroundColor: Colors.black,
        backgroundColor: bckcolor2 ?? Colors.yellow.shade100,
        child: child ??
            Icon(
              Icons.person,
              size: size ?? 40,
            ),
      ),
    );
  }
}
