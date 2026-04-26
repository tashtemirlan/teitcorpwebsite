import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teitwebsite/website/logoPage.dart';
import 'package:teitwebsite/website/websitePage.dart';
import 'package:teitwebsite/website/flutterLandingPage.dart';
import 'package:teitwebsite/website/notFoundPage.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  errorBuilder: (BuildContext context, GoRouterState state) =>
      const NotFoundPage(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LogoStart(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const WebsitePage(),
    ),
    GoRoute(
      path: '/flutter',
      builder: (context, state) => const FlutterLandingPage(),
    ),
  ],
);
