import 'package:flutter/material.dart';
import 'package:salon_booking_ui/models/models.dart';
import 'package:salon_booking_ui/screens/category_selection.dart';
import 'package:salon_booking_ui/utils/colors.dart';

import '../widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/images/image1.png",
                fit: BoxFit.cover,
                height: size.height * 0.2,
                width: size.width,
              ),
              Positioned(
                top: size.height * 0.11,
                left: 30,
                child: Row(
                  children: [
                    iconContainer(Icons.add),
                    const SizedBox(width: 25),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/image33.png"),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 25),
                    iconContainer(Icons.add),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.12),
          Column(
            children: [
              const Text(
                "Jesica Parker",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "Make-Up Artist and Hair Designer",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(
                        Icons.star,
                        color: i < 4 ? Colors.amber : Colors.grey,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    designerSkill("Make-Up"),
                    designerSkill("Lashes"),
                    designerSkill("Brow Artist"),
                    designerSkill("Bridal Make-Up"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  designerSkill("Make-Up"),
                  designerSkill("Lashes"),
                  designerSkill("Brow Artist"),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 75,
                    child: Container(
                      height: 1,
                      width: size.width,
                      color: Colors.black12,
                    ),
                  ),
                  const Divider(
                    color: Colors.black12,
                    height: 50,
                  ),
                  const Positioned(
                    top: 35,
                    child: CategorySelection(),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.59,
                  crossAxisSpacing: 15,
                ),
                itemCount: userInfo.length,
                itemBuilder: (context, index) {
                  final product = userInfo[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        product.image,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      const Text("Day Nude make up red lips"),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/chat.png",
                            height: 15,
                            color: Colors.black54,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            product.chat,
                            style: const TextStyle(color: Colors.black45),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.favorite_border,
                              color: Colors.black26),
                          const SizedBox(width: 5),
                          Text(
                            product.love,
                            style: const TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
