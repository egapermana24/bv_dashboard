
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static SvgPicture svgIcon(String iconName, {double width = 24, double height = 24}) {
    return SvgPicture.asset(
      'assets/icons/$iconName.svg',
      width: width,
      height: height,
    );
  }
}
