import 'package:flutter/material.dart';
import 'package:flutter_scooter_rent_app/app_styles.dart';
import 'package:flutter_scooter_rent_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryRidesPage extends StatelessWidget {
  const HistoryRidesPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sunday, 3 December',
                      style: kWorkSansMedium.copyWith(
                        color: kLightUltraVioletAA,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                    Text(
                      'Good Morning, Joy',
                      style: kWorkSansBold.copyWith(
                        color: kUltraViolet66,
                        fontSize: SizeConfig.blockSizeHorizontal! * 5,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => debugPrint('Menu Button Tapped'),
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: SvgPicture.asset('assets/icon-menu.svg'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: kPadding18,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius10),
                color: kGreenEmerald3D,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding24,
                      vertical: kPadding16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon-energy.svg',
                              width: 26,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Energy',
                                  style: kWorkSansMedium.copyWith(
                                    color: kLightGreenNyanzaE5,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                Text(
                                  'Rp. 120.000',
                                  style: kWorkSansBold.copyWith(
                                    color: kWhite,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 4.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: kYellowXanthousFF,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: kWhite,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Text(
              'Near Scooter',
              style: kWorkSansBold.copyWith(
                color: kUltraViolet66,
                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
              ),
            ),
            const SizedBox(
              height: kPadding16,
            ),
            SizedBox(
              width: double.infinity,
              height: 147,
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 147,
                    width: SizeConfig.screenWidth! * 0.85,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 0 : 12,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: kPadding8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                      border: Border.all(
                        color: kGrey,
                        width: 1,
                      ),
                      color: kWhite,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 126,
                          width: 126,
                          child: Image.asset('assets/img-scooter-demo.png'),
                        ),
                        const SizedBox(
                          height: 107,
                          child: VerticalDivider(
                            color: kGrey,
                            thickness: 1,
                            width: 1,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Boosted Rev 2',
                                style: kWorkSansBold.copyWith(
                                  color: kUltraViolet66,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                ),
                              ),
                              Text(
                                'Jl. Karang Tengah 1',
                                style: kWorkSansMedium.copyWith(
                                  color: kLightUltraVioletAA,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.9,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 1,
                              ),
                              const Divider(
                                color: kGrey,
                                thickness: 1,
                                height: 1,
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 1,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icon-energy-yellow.svg',
                                  ),
                                  SizedBox(
                                    width:
                                        SizeConfig.blockSizeHorizontal! * 1.5,
                                  ),
                                  Text(
                                    'Battery left',
                                    style: kWorkSansMedium.copyWith(
                                      color: kLightUltraVioletAA,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 2.9,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 0.5,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '85',
                                  style: kWorkSansBold.copyWith(
                                    color: kUltraViolet66,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 6,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' percent',
                                      style: kWorkSansMedium.copyWith(
                                        color: kLightUltraVioletAA,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                3.5,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Text(
              'Past Rides',
              style: kWorkSansBold.copyWith(
                color: kUltraViolet66,
                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
              ),
            ),
            const SizedBox(
              height: kPadding16,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius10),
                    border: Border.all(
                      color: kGrey,
                      width: 1,
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    bottom: kPadding12,
                  ),
                  padding: EdgeInsets.all(
                    SizeConfig.blockSizeHorizontal! * 5,
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon-my-location.svg',
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Karang Tengah',
                                style: kWorkSansBold.copyWith(
                                  color: kUltraViolet66,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5,
                                ),
                              ),
                              Text(
                                'Dec 1, 11:30',
                                style: kWorkSansMedium.copyWith(
                                  color: kLightUltraVioletAA,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.9,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal! * 4,
                        ),
                        height: 60,
                        child: const VerticalDivider(
                          color: kGrey,
                          thickness: 1,
                          width: 1,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icon-travel-time.svg',
                              ),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal! * 1,
                              ),
                              Text(
                                'Travel Time',
                                style: kWorkSansMedium.copyWith(
                                  color: kLightUltraVioletAA,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.9,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical! * 0.5,
                          ),
                          RichText(
                            text: TextSpan(
                              text: '57',
                              style: kWorkSansBold.copyWith(
                                color: kUltraViolet66,
                                fontSize: SizeConfig.blockSizeHorizontal! * 6,
                              ),
                              children: [
                                TextSpan(
                                  text: 'min',
                                  style: kWorkSansMedium.copyWith(
                                    color: kLightUltraVioletAA,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3.5,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
