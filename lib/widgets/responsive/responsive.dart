import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

extension ScaleFactorFontSize on num {
  //can use media query for direct changes at window size

  double get widthWithoutMediaQuery {
    var dispatcher = PlatformDispatcher.instance;
    var physicalWidth = dispatcher.views.first.physicalSize.width;
    var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    double width = physicalWidth / devicePixelRatio;

    return width;
  }

  double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    double factor = switch (width) {
      < SizeConfig.tablet => width / 550,
      < SizeConfig.desktop => width / 1000,
      _ => width / 1920,
    };

    return factor;
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
extension ResponsiveDoubleFontSize on double {
  double responsive(BuildContext context) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = scaleFactor * this;

    double lowerLimit = this * 0.8;
    double upperLimit = this * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }
}

extension ResponsiveIntFontSize on int {
  double responsive(BuildContext context) {
    return toDouble().responsive(context);
  }
}
