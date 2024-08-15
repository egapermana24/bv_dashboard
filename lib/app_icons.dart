
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  // Method to get an SVG icon
  static SvgPicture svgIcon(String iconName, {double width = 24, double height = 24}) {
    return SvgPicture.asset(
      'assets/icons/$iconName.svg',
      width: width,
      height: height,
    );
  }
}
