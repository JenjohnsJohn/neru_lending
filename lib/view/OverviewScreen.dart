import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neru_lending/controller/base_controller.dart';
import 'package:neru_lending/controller/overview_controller.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    OverviewController overviewController = Get.put(OverviewController());
    BaseController baseController = Get.put(BaseController());
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300.0,
                child: Stack(
                  children: [
                    Image(
                      image: const AssetImage('assets/images/cover.jpg'),
                      width: width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: width,
                      height: 60.0,
                      margin: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all<Color>(
                                          Colors.transparent),
                                  elevation: WidgetStateProperty.all<double>(0),
                                  iconColor: WidgetStateProperty.all<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {
                                  baseController.bottomNavIndex.value = 0;
                                },
                                icon: const Icon(Icons.arrow_back),
                              ),
                              const Text(
                                "Back",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Colors.transparent),
                              elevation: WidgetStateProperty.all<double>(0),
                              iconColor:
                                  WidgetStateProperty.all<Color>(Colors.black),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(0, -60, 0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 0.0),
                  child: Column(
                    children: [
                      Card(
                        elevation: 50,
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 16.0),
                          width: width - 80,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Burden",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text("Dribble"),
                                    ],
                                  ),
                                  Obx(
                                    () => Row(
                                      children: [
                                        Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                overviewController
                                                    .favCount.value++;
                                              },
                                              icon: const Icon(
                                                Icons.favorite,
                                                size: 16,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStateProperty.all<
                                                        Color>(Colors.pink),
                                                elevation: WidgetStateProperty
                                                    .all<double>(8),
                                                iconColor: WidgetStateProperty
                                                    .all<Color>(Colors.white),
                                                shadowColor: WidgetStateProperty
                                                    .all<Color>(Colors.pink),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "${overviewController.favCount.value}",
                                              style:
                                                  TextStyle(color: Colors.pink),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                overviewController
                                                    .msgCount.value++;
                                              },
                                              icon: const Icon(
                                                Icons.message,
                                                size: 16,
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStateProperty.all<
                                                        Color>(Colors.blue),
                                                elevation: WidgetStateProperty
                                                    .all<double>(8),
                                                iconColor: WidgetStateProperty
                                                    .all<Color>(Colors.white),
                                                shadowColor: WidgetStateProperty
                                                    .all<Color>(Colors.blue),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "${overviewController.msgCount.value}",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              RichText(
                                text: const TextSpan(
                                  text:
                                      "Lorem Ipsum is simply dummy text of the printing, testing and type setting industry' specimen book of world. ",
                                  style: TextStyle(color: Colors.grey),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "ReadMore >",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                maxLines: 4,
                              ),
                              const Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Row(
                                  children: [
                                    IconCountTitle(
                                      title: "Reputation",
                                      icon: CircleAvatar(
                                        backgroundColor: Colors.deepPurple,
                                        child: Icon(
                                          Icons.hail_rounded,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      count: "79",
                                    ),
                                    IconCountTitle(
                                      title: "+ Influence",
                                      icon: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        child: Icon(
                                          Icons.handshake_rounded,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      count: "49",
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.toggle_off_outlined,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          " Inactive",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      color: Color.fromARGB(255, 110, 87, 255),
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      onPressed: () {},
                                      child: Text("Activate"),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 50,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 50),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 16.0),
                          width: width - 80,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 0.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 15),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      Colors.lightBlue.shade100,
                                                  blurRadius: 5.0,
                                                ),
                                              ],
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.lightBlue[200],
                                              child: const Icon(
                                                Icons.pie_chart,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "Stats",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    const Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 0.0),
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(
                                        "Lorem ipsum dummy data",
                                      ),
                                      leading: Icon(
                                        Icons.radio_button_off,
                                        size: 12,
                                      ),
                                      minLeadingWidth: 10,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Lorem ipsum dummy data",
                                      ),
                                      leading: Icon(
                                        Icons.radio_button_off,
                                        size: 12,
                                      ),
                                      minLeadingWidth: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconCountTitle extends StatelessWidget {
  const IconCountTitle({
    super.key,
    required this.icon,
    required this.count,
    required this.title,
  });

  final Widget icon;
  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                count,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
