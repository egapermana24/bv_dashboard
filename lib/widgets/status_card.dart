import 'package:flutter/material.dart';
import '../bloc/dashboard_state.dart';
import '../app_colors.dart';
import 'status_item.dart';

class StatusCard extends StatelessWidget {
  final DashboardLoaded state;

  const StatusCard({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.blueShadow.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 32,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.biruMuda,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Today',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StatusItem(
                  title: 'Check In',
                  count: state.checkIn,
                  color: AppColors.checkInColor,
                  colorLine: AppColors.checkInColorLine,
                  cardColor: AppColors.checkInColorCard,
                  svgIcon: 'assets/icons/checkin.svg',
                  subtitle: '2 rooms',
                ),
                StatusItem(
                  title: 'In House',
                  count: state.inHouse,
                  color: AppColors.inHouseColor,
                  colorLine: AppColors.inHouseColorLine,
                  cardColor: AppColors.inHouseColorCard,
                  svgIcon: 'assets/icons/inhause.svg',
                  subtitle: '0 rooms',
                ),
                StatusItem(
                  title: 'Check Out',
                  count: state.checkOut,
                  color: AppColors.checkOutColor,
                  colorLine: AppColors.checkOutColorLine,
                  cardColor: AppColors.checkOutColorCard,
                  svgIcon: 'assets/icons/checkout.svg',
                  subtitle: '2 rooms',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
