import 'package:checker/presentation/pages/home/home_page.dart';
import 'package:checker/presentation/routes/entity/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
    initialLocation: Routes.home.path,
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      
      GoRoute(
        name: Routes.home.name,
        path: Routes.home.path,
        pageBuilder: (_, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const HomePage(),
        ),
      ),
      

    ],
    errorBuilder: (_, state) => const SizedBox());
