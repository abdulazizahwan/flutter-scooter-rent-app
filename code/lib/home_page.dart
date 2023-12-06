import 'package:flutter/material.dart';
import 'package:flutter_scooter_rent_app/app_styles.dart';
import 'package:flutter_scooter_rent_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
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
              height: SizeConfig.screenHeight! * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius10),
                  color: kGreenEmerald3D,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/Illustration.png',
                    ),
                  )),
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
                  const Divider(
                    height: 1,
                    thickness: 0,
                    color: kLightGreenNyanzaE5,
                  ),
                  const SizedBox(
                    height: kPadding24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding24,
                    ),
                    width: SizeConfig.screenWidth! * 0.6,
                    child: Text(
                      'Where are you going Today?',
                      style: kWorkSansMedium.copyWith(
                        color: kWhite,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kPadding16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding24,
                      vertical: kPadding16,
                    ),
                    child: GestureDetector(
                      onTap: () => debugPrint('Rent Button Tapped'),
                      child: IntrinsicWidth(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kPadding24,
                            vertical: kPadding12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kBorderRadius12),
                            color: kYellowXanthousFF,
                          ),
                          child: Center(
                            child: Text(
                              'Rent Now',
                              style: kWorkSansSemibold.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Past Rides',
                  style: kWorkSansBold.copyWith(
                    color: kUltraViolet66,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: kWorkSansMedium.copyWith(
                        color: kLightUltraVioletAA,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 1,
                    ),
                    SvgPicture.asset(
                      'assets/icon-arrow-forward.svg',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: kPadding24,
            ),
            ListView.builder(
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    bottom: kPadding16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius10),
                    border: Border.all(
                      color: kGrey,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img-mapview-demo.png',
                        width: SizeConfig.screenWidth! * 0.3,
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/icon-pinned-location.svg',
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal! * 3.5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Karang Tengah',
                                      style: kWorkSansBold.copyWith(
                                        color: kUltraViolet66,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                3.5,
                                      ),
                                    ),
                                    Text(
                                      'Dec 1, 11:30',
                                      style: kWorkSansMedium.copyWith(
                                        color: kLightUltraVioletAA,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                2.9,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 0.5,
                            ),
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: kGrey,
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 0.5,
                            ),
                            Row(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icon-travel-time.svg',
                                    ),
                                    SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 2.5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Travel Time',
                                          style: kWorkSansMedium.copyWith(
                                            color: kLightUltraVioletAA,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                2.5,
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: '57',
                                            style: kWorkSansBold.copyWith(
                                              color: kUltraViolet66,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  4,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'min',
                                                style: kWorkSansMedium.copyWith(
                                                  color: kLightUltraVioletAA,
                                                  fontSize: SizeConfig
                                                          .blockSizeHorizontal! *
                                                      2.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal! * 3.5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icon-price.svg',
                                    ),
                                    SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 2.5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Price',
                                          style: kWorkSansMedium.copyWith(
                                            color: kLightUltraVioletAA,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                2.5,
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: '10',
                                            style: kWorkSansBold.copyWith(
                                              color: kUltraViolet66,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  4,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'ribu',
                                                style: kWorkSansMedium.copyWith(
                                                  color: kLightUltraVioletAA,
                                                  fontSize: SizeConfig
                                                          .blockSizeHorizontal! *
                                                      2.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
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
