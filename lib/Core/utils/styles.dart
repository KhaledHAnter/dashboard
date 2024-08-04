import 'package:dashboard/Core/utils/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle styleRegular16 = TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMedium16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleSemiBold16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16 = TextStyle(
    color: const Color(0xff4eb7f2),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleSemiBold18 = TextStyle(
    color: const Color(0xff4eb7f2),
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleMedium20 = TextStyle(
    color: const Color(0xffffffff),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleSemiBold20 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold24 = TextStyle(
    color: const Color(0xff4eb7f2),
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular12 = TextStyle(
    color: const Color(0xffaaaaaa),
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular14 = TextStyle(
    color: const Color(0xffaaaaaa),
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
}

// ScaleFactor
// Responsive font size
// (min , max) font size

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var pysicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var width = pysicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
