import 'package:flutter/material.dart';
import 'colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text('Training',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColor.homePageTitle,
                      fontWeight: FontWeight.w700,
                    )),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                    size: 20, color: AppColor.homePageIcons),
                const SizedBox(width: 7),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: AppColor.homePageIcons),
                const SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: AppColor.homePageIcons),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text('Your program',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColor.homePageSubtitle,
                        fontWeight: FontWeight.w700)),
                Expanded(child: Container()),
                Text('Details',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColor.homePageDetail,
                        fontWeight: FontWeight.w700)),
                const SizedBox(width: 5),
                Icon(Icons.arrow_forward,
                    size: 20, color: AppColor.homePageIcons),
              ],
            ),
            // const SizedBox(height:20),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColor.gradientFirst.withOpacity(0.8),
                    AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  // you can define where the rendering should begin
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    // offset tells you how much it should spread left & right
                    offset: const Offset(5, 10),
                    // 5 = left right 10 = top bottom
                    blurRadius: 10,
                    // the higer the blurRadiusis, the lighter the shadow is
                    color: AppColor.gradientSecond.withOpacity(0.2),
                  )
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Next workout',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor.homePageContainerTextSmall,
                        )),
                    const SizedBox(height: 5),
                    Text('Legs toning',
                        style: TextStyle(
                          fontSize: 25,
                          color: AppColor.homePageContainerTextSmall,
                        )),
                    const SizedBox(height: 5),
                    Text('Glutes workout',
                        style: TextStyle(
                          fontSize: 25,
                          color: AppColor.homePageContainerTextSmall,
                        )),
                    const SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer,
                                size: 20,
                                color: AppColor.homePageContainerTextSmall),
                            const SizedBox(width: 8),
                            Text('60 minutes',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColor.homePageContainerTextSmall,
                                )),
                          ],
                        ),
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.gradientFirst,
                                  blurRadius: 10,
                                  offset: const Offset(4, 8),
                                )
                              ],
                            ),
                            child: const Icon(Icons.play_circle_fill,
                                color: Colors.white, size: 60),
                          ),
                      ],
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
}
