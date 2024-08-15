import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoHeader extends StatelessWidget {
  final String logo1Path;
  final String logo2Path;

  const LogoHeader({
    Key? key,
    required this.logo1Path,
    required this.logo2Path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the logo size based on the screen width (e.g., 20% of the screen width)
    double logo1Size = screenWidth * 0.2;
    double logo2Size = screenWidth * 0.06;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Menambahkan SizedBox untuk memberikan jarak di atas
          SizedBox(height: 20), // Ubah nilai sesuai kebutuhan
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                logo1Path,
                width: logo1Size,
                height: logo1Size,
              ),
              SvgPicture.asset(
                logo2Path,
                width: logo2Size,
                height: logo2Size,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
