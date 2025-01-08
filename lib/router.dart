import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parking_flutter/screens/home/home.dart';
import 'package:parking_flutter/screens/parkingStatus/parkingStatus.dart';
import 'package:parking_flutter/screens/scanner/scanner.dart';
import 'package:parking_flutter/screens/scanner/scannerKo.dart';
import 'package:parking_flutter/screens/search/searchScreen.dart';
import 'package:parking_flutter/screens/searchDetail/searchDetailScreen.dart';
import 'package:parking_flutter/widgets/bottomNavBarWidget.dart';

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/home',
  navigatorKey: rootNavKey,
  routes: [
    ShellRoute(
        navigatorKey: shellNavKey,
        builder: (context, state, child) {
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavBarWidget(),
          );
        },
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: HomeScreen()),
          ),
          GoRoute(
            path: '/parking/status',
            builder: (context, state) => ParkingStatus(),
          ),
          GoRoute(
            path: '/scanner',
            builder: (context, state) => Scanner(title: '스캐너'),
          ),
          GoRoute(
            path: '/scanner/korea',
            builder: (context, state) => Scannerko(),
          ),
          GoRoute(
            path: '/search',
            pageBuilder: (context, state) => NoTransitionPage(
              child: SearchScreen(),
            ),
          ),
          GoRoute(
            path: '/search/detail',
            builder: (context, state) => SearchDetailScreen(),
          ),
        ]),
  ],
);
