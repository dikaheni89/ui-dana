// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, invalid_use_of_protected_member

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_dana/controller/HomeController.dart';
import 'package:ui_dana/utility/themeColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Row(
          children: [
            ImageIcon(
              AssetImage('assets/logodana2.png'),
              color: Colors.white,
              size: 32.0,
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              'Rp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              '5.000.000',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 16.0,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.email_outlined,
              size: 32.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: primaryColors),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 100,
              bottom: 0,
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5.0,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Looking for something?',
                                hintStyle: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey[300]!,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/icon/scan.png'),
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      'Scan',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/icon/topup.png'),
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      'Top Up',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/icon/send.png'),
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      'Send',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/icon/request.png'),
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      'Request',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11))
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        border:
                            Border.all(width: 1.0, color: Colors.grey[300]!),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/lazada.png',
                                ),
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lazada 10.10",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Diskon s/d 50%",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.orange,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColors,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Serbu",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Builder(builder: (context) {
                            List menuItems = [
                              {
                                "image": "assets/icon/pulsa.png",
                                "title": "Pulsa &\nPaket Data"
                              },
                              {
                                "image": "assets/icon/googleplay.png",
                                "title": "Google\nPlay Store"
                              },
                              {
                                "image": "assets/icon/rewards.png",
                                "title": "A+ &\nRewards"
                              },
                              {
                                "image": "assets/icon/games.png",
                                "title": "Games"
                              },
                              {
                                "image": "assets/icon/bpjs.png",
                                "title": "BPJS \nKesehatan"
                              },
                              {
                                "image": "assets/icon/deals.png",
                                "title": "Dana &\nDeals"
                              },
                              {
                                "image": "assets/icon/electrical.png",
                                "title": "Electrical \nBills"
                              },
                              {
                                "image": "assets/icon/all.png",
                                "title": "view \nAlls"
                              },
                            ];
                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1.0,
                                crossAxisCount: 4,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 6,
                              ),
                              itemCount: menuItems.length,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var item = menuItems[index];
                                return InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(2.0),
                                          child: Image.asset(
                                            item['image'],
                                            width: 32.0,
                                            height: 32.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        item['title'],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11))
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        border:
                            Border.all(width: 1.0, color: Colors.grey[300]!),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Feed",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Find out what your friends are up to!",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: primaryColors,
                                    side: const BorderSide(
                                      color: primaryColors,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Explore",
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/128/560/560216.png",
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    text: '',
                                    style: DefaultTextStyle.of(context)
                                        .style
                                        .copyWith(fontSize: 13.0),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Your friend',
                                      ),
                                      TextSpan(
                                        text:
                                            'Just Received Mobile Credit From ',
                                      ),
                                      TextSpan(
                                        text: 'E-Money Suprize',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Builder(
                      builder: (context) {
                        List images = [
                          "https://images.unsplash.com/photo-1607082349566-187342175e2f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zmxhc2glMjBzYWxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                          "https://images.unsplash.com/photo-1607082350899-7e105aa886ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zmxhc2glMjBzYWxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                          "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                          "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                          "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                        ];

                        return Column(
                          children: [
                            CarouselSlider(
                              carouselController: controller.carouselController,
                              options: CarouselOptions(
                                height: 120.0,
                                autoPlay: true,
                                enlargeCenterPage: false,
                                viewportFraction: 1.0,
                                onPageChanged: (index, reason) {
                                  controller.currentIndex = index;
                                  controller.setState(() {});
                                },
                              ),
                              items: images.map((imageUrl) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6.0),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            imageUrl,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: images.asMap().entries.map((entry) {
                                bool isSelected =
                                    controller.currentIndex == entry.key;
                                return GestureDetector(
                                  onTap: () => controller.carouselController
                                      .animateToPage(entry.key),
                                  child: Container(
                                    width: isSelected ? 40 : 6.0,
                                    height: 6.0,
                                    margin: const EdgeInsets.only(
                                      right: 6.0,
                                      top: 12.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? primaryColors
                                          : Colors.grey[400]!,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11))
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        border:
                            Border.all(width: 1.0, color: Colors.grey[300]!),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "What's New",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "The best news of the week!",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                      vertical: 4.0,
                                    ),
                                    foregroundColor: primaryColors,
                                    side: const BorderSide(
                                      color: primaryColors,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/giftbox.png',
                                        width: 18.0,
                                        height: 18.0,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 4.0,
                                      ),
                                      const Text(
                                        " Views Promos",
                                        style: TextStyle(fontSize: 10.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Builder(
                            builder: (context) {
                              List menuItems = [
                                {
                                  "image": "assets/icon/sompet.png",
                                  "title": "#BukanDompetBiasa",
                                  "subtitle": "Semua Transaksi Bisa di Dana"
                                },
                                {
                                  "image": "assets/icon/korup.png",
                                  "title": "Bye Modus Penipuan",
                                  "subtitle": "Cek Tips Aman yuk!"
                                },
                                {
                                  "image": "assets/lazada.png",
                                  "title": "Serbu Diskon Lazada",
                                  "subtitle": "pakai DANA Diskon s/d Rp50RB!"
                                },
                              ];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: menuItems.length,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  var item = menuItems[index];
                                  return Container(
                                    margin: const EdgeInsets.only(bottom: 20.0,),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                            item['image'],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item['title'],
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4.0,
                                              ),
                                              Text(
                                                item['subtitle'],
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[600],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SizedBox(
                            height: 30,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: primaryColors,
                                side: const BorderSide(
                                  color: primaryColors,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "View All News",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 200.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HomePage> createState() => HomeController();
}
