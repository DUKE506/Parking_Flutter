import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parking_flutter/screens/home/home.dart';
import 'package:parking_flutter/screens/parkingStatus/parkingStatus.dart';
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
            pageBuilder: (context, state) => const MaterialPage(child: Home()),
          ),
          GoRoute(
            path: '/parking/status',
            builder: (context, state) => ParkingStatus(),
          )
        ]),
  ],
);
