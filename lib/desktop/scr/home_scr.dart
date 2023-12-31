import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/common_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          "images/homebanner.png",
          width: width(context),
          height: 420,
          fit: BoxFit.fill,
        ),
        // Image.network(
        //   "https://img.freepik.com/free-photo/mystical-numerology-scene_52683-107762.jpg?w=1380&t=st=1696179432~exp=1696180032~hmac=6624ca23628b8ff6eb1535c6891c867ba17023cc34c0e652fed5f90ca4958ae2",
        //   width: width(context),
        //   height: 400,
        //   fit: BoxFit.fill,
        // ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 150, right: 150, bottom: 20),
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
        ),
        heightSizedBox(10.0),
        Container(
          padding: EdgeInsets.all(25.0),
          width: width(context),
          height: null,
          color: Colors.amberAccent,
          child: Column(
            children: [
              Text(
                "Our Promise",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              heightSizedBox(20.0),
              Text(
                "Top Astrologers. 24x7 customer support. Happy to help.",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              heightSizedBox(25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Icon(
                            Icons.money,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.purpleAccent,
                        ),
                        heightSizedBox(5.0),
                        Text(
                          "Money Back Guarantee",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  widthSizedBox(30.0),
                  Container(
                    height: 120,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Icon(
                            Icons.verified,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                        heightSizedBox(5.0),
                        Text(
                          "Verified Expert Astrologers",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  widthSizedBox(30.0),
                  Container(
                    height: 120,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Icon(
                            Icons.security_outlined,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.pinkAccent,
                        ),
                        heightSizedBox(5.0),
                        Text(
                          "100% Secure Payment",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        heightSizedBox(30.0),
        Container(
          width: width(context),
          height: null,
          color: Colors.white,
          child: Column(
            children: [
              Text(
                "Our Astrologers",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              heightSizedBox(10.0),
              Text(
                "Get consultation from India’s Best Astrologers and Readers at Best Rates. You are just a call away!!",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              heightSizedBox(10.0),
              Text(
                "Our in-house expert astrologers provide accurate solutions to all your problems. Along with that, get free Hindu astrology predictions daily\non our website. Get all the information of astrology at the comfort of your home. InstaAstro provides you with an online platform to discuss \n   your queries with the most renowned and authentic astrologers from all over India. Select from our range of famous vedic astrologers,\n numerologists and vastu experts and consult with them whichever way you like — call or online chat. Get insights and answers\n format and language ranging from English, Hindi, Tamil, Punjabi and many other regional languages. Our astrologers are equipped with\n great experience and knowledge and can provide predictions and remedies on love and relationship issues,\n husband and wife problems, job queries, money matters, business predictions, education queries and other personal and professional\n issues. Be a part of our extended family and relive the joy that our happy customers have cherished. Get accurate astrology predictions as\n per your birth sign, birth chart and kundli status and benefit from the vast knowledge of our astrologers.",
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500, height: 1.5),
                overflow: TextOverflow.visible,
              ),
              heightSizedBox(20.0),
              Text(
                "Why Talk To Our Astrologers?",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Text(
                              "550+ expert astrologers",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        widthSizedBox(10.0),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Text(
                              "Get a better understanding & guidance",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        width: 500,
                        color: Colors.grey.shade200,
                        child: Center(
                          child: Text(
                            "Personalized solutions on the phone",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      widthSizedBox(10.0),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        width: 500,
                        color: Colors.grey.shade200,
                        child: Center(
                          child: Text(
                            "Private and confidential",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                  heightSizedBox(15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        width: 500,
                        color: Colors.grey.shade200,
                        child: Center(
                          child: Text(
                            "Live astrology consultation anytime, anywhere",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      widthSizedBox(10.0),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        width: 500,
                        color: Colors.grey.shade200,
                        child: Center(
                          child: Text(
                            "Instant solutions in difficult time",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              heightSizedBox(30.0),
              Container(
                padding: EdgeInsets.all(20),
                width: width(context),
                height: null,
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    heightSizedBox(10.0),
                    Text(
                      "Accurate Predictions",
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    heightSizedBox(10.0),
                    Text(
                      "Tired of wasting your energy and money on people who are there to scam you? Get 100% accurate predictions from our astrologers\n who care about you and provide you with full privacy. Love, marriage, job and professional uncertainty can hit you anytime.\n What’s worse is entrusting someone with that knowledge and getting ripped off of your money and peace.\n At InstaAstro you are simply a call away from getting genuine solutions at the time and place which you desire. Everything is\n available 24x7. InstAstro can provide you with 100% genuine solutions with full privacy and understanding. Get astrology and\n                                                                                  horoscope predictions for-",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    ),
                    heightSizedBox(15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade100,
                          child: Center(
                            child: Text(
                              "Love, marriage and other relationship problems",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        widthSizedBox(10.0),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade100,
                          child: Center(
                            child: Text(
                              "Kalsarp yog and kundali grahana yog",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                    heightSizedBox(15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade100,
                          child: Center(
                            child: Text(
                              "Married life, divorce and disturbed relations",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        widthSizedBox(10.0),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade100,
                          child: Center(
                            child: Text(
                              "Business, career, and money problems",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                    heightSizedBox(15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade100,
                          child: Center(
                            child: Text(
                              "Family conflicts and property issues",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        widthSizedBox(10.0),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          width: 500,
                          color: Colors.grey.shade100,
                          child: Center(
                            child: Text(
                              "Uncertain and unstable financial conditions",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                    heightSizedBox(10.0),
                    Text(
                      "To ensure that you have immediate solutions to your problems at the touch of your screen, InstaAstro works hard to provide you with\n expertise, privacy, local astrologers and their numbers, customer satisfaction, 24x7 availability along with multiple sessions. Take the leap\n of faith and enjoy the best astrology services with prime features.",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    ),
                  ],
                ),
              ),
              heightSizedBox(20.0),
              Container(
                color: Color(0xff454545),
                padding: EdgeInsets.all(25.0),
                width: width(context),
                height: null,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 150, right: 150, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            "About AstroKapish",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          heightSizedBox(5.0),
                          Container(
                            color: Colors.amber,
                            height: 2,
                            width: 150,
                          )
                        ],
                      ),
                      heightSizedBox(8.0),
                      Text(
                        "AstroKapish is the best astrology website for online Astrology predictions. Talk to Astrologer on call and get answers to all your worries by seeing the future life\nthrough Astrology Kundli Predictions from the best Astrologers from India. Get best future predictions related to Marriage, love life, Career or Health over call,\nchat, query or report.",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 2),
                      ),
                      heightSizedBox(8.0),
                      Container(
                        color: Colors.white,
                        height: 1,
                        width: width(context) / 1.45,
                      ),
                      heightSizedBox(15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Horoscope",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              heightSizedBox(5.0),
                              Container(
                                color: Colors.amber,
                                height: 2,
                                width: 90,
                              ),
                              heightSizedBox(15.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Horoscope 2023",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              heightSizedBox(10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Todays Horoscope",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              heightSizedBox(10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Todays Love Horoscope",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              heightSizedBox(10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Yesterday Horoscope ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              heightSizedBox(10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Tomorrow's Horoscope ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              heightSizedBox(10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Weekly Horoscope ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              heightSizedBox(10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Monthly Horoscope ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              heightSizedBox(10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Yearly Horoscope ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
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
