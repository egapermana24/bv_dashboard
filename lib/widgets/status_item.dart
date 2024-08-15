import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_colors.dart';

class StatusItem extends StatelessWidget {
  final String title;
  final int count;
  final Color color;
  final Color colorLine;
  final String svgIcon; // Ubah dari IconData ke String untuk path SVG
  final String subtitle;
  final Color cardColor;

  const StatusItem({
    Key? key,
    required this.title,
    required this.count,
    required this.color,
    required this.colorLine,
    required this.svgIcon, // Ubah dari IconData ke String untuk path SVG
    required this.subtitle,
    this.cardColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: cardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Angka dan Ikon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    count.toString(),
                    style: TextStyle(
                      color: color,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  SvgPicture.asset(
                    svgIcon, // Path SVG icon// Warna SVG akan berubah sesuai dengan color
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Bagian Keterangan Status
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              const SizedBox(height: 2),
              // Garis warna di bawah keterangan status
              Container(
                height: 2,
                width: double.infinity,
                color: colorLine,
              ),
              const SizedBox(height: 2),
              // Bagian Keterangan Ruangan
              Text(
                subtitle,
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
