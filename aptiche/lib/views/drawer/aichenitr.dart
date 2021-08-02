import 'package:aptiche/utils/string.dart';
import 'package:aptiche/utils/theme.dart';
import 'package:aptiche/utils/ui_scaling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AboutAICHENITR extends StatelessWidget {
  const AboutAICHENITR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColour,
      appBar: AppBar(
          elevation: 6,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            color: kTextColourBlue,
            onPressed: () {
              Get.back<dynamic>();
            },
          ),
          centerTitle: false,
          backgroundColor: kBgColour,
          title: Text(
            'AIChE NIT Rourkela',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: SizeConfig.safeBlockHorizontal! * 7,
                  color: kTextColourBlue,
                  fontWeight: FontWeight.w600,
                ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal! * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/aichenitr.png',
                  width: SizeConfig.screenWidth! * 0.65,
                  height: SizeConfig.screenWidth! * 0.65,
                  alignment: Alignment.centerLeft,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 4,
                    vertical: SizeConfig.safeBlockHorizontal! * 4),
                child: Text(
                  Strings.aiche_nitr,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: SizeConfig.safeBlockHorizontal! * 4,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
