import 'package:dashboard_bvgo/app_colors.dart';
import 'package:dashboard_bvgo/widgets/header_article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../bloc/dashboard_bloc.dart';
import '../bloc/dashboard_event.dart';
import '../bloc/dashboard_state.dart';
import '../widgets/status_card.dart';
import '../widgets/article_list.dart';
import '../widgets/logo_header.dart';
import '../models/article.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articles = [
      Article(
        title: 'Embracing the Spirit of Ramadan Kareem 1445',
        date: '11 Mar 2024',
        type: 'Announcement',
        imageUrl: 'assets/images/list1.jpg',
      ),
      Article(
        title: 'Rahajeng Nyanggra Rahina Nyepi Caka 1946',
        date: '11 Mar 2024',
        type: 'Announcement',
        imageUrl: 'assets/images/list2.jpg',
      ),
      Article(
        title: 'A Core Value Recognition: Adi - Be the Hero',
        date: '06 Mar 2024',
        type: 'Announcement',
        imageUrl: 'assets/images/list3.jpg',
      ),
    ];

    return BlocProvider(
      create: (context) => DashboardBloc()..add(LoadDashboardEvent()),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 40.0,
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  'assets/images/Background.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primaryColor.withOpacity(0.6),
                      AppColors.cardColor.withOpacity(0.9),
                      AppColors.cardColor,
                    ],
                    stops: [0.0, 0.5, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: BlocBuilder<DashboardBloc, DashboardState>(
                  builder: (context, state) {
                    if (state is DashboardLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is DashboardLoaded) {
                      return Column(
                        children: [
                          const LogoHeader(
                            logo1Path: 'assets/images/logo.png',
                            logo2Path: 'assets/images/text_logo.svg',
                          ),
                          StatusCard(state: state),
                          HeaderWithIcon(
                            iconPath: 'assets/icons/header_article.svg',
                            title: 'Article',
                            actionText: 'Read more',
                            onTap: () {
                              print('Read More tapped');
                            },
                          ),
                          ArticleList(articles: articles),
                        ],
                      );
                    } else {
                      return const Center(child: Text('Unknown state'));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
