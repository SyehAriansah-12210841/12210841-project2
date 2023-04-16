import 'package:flutter/material.dart';
import 'package:pendataankelas4b/providers/berita_panel_provider.dart';
import 'package:pendataankelas4b/views/login_view.dart';
import 'package:pendataankelas4b/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (c) => DashboardProvider()),
      ChangeNotifierProvider(create: (c) => BeritaPanelProvider()),
    ],
    builder: (context, Widget) {
      return MaterialApp(
        theme:
            ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.purple)),
        home: LoginView(),
      );
    },
  ));
}
