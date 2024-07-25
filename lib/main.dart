import 'package:dashboard/Core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
