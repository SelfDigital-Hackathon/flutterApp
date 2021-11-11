import 'package:flutter/material.dart';
import 'package:takeda_hackathon_flutter_app/screens/components.dart';
import 'package:takeda_hackathon_flutter_app/screens/home.dart';

import 'package:takeda_hackathon_flutter_app/screens/onboarding.dart';
import 'package:takeda_hackathon_flutter_app/screens/pro.dart';
import 'package:takeda_hackathon_flutter_app/screens/profile.dart';
import 'package:takeda_hackathon_flutter_app/screens/settings.dart';

void main() => runApp(const MaterialKitPROFlutter());

class MaterialKitPROFlutter extends StatelessWidget {
  const MaterialKitPROFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "SelfDigital Hackathon App",
        debugShowCheckedModeBanner: false,
        initialRoute: "/onboarding",
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => const Onboarding(),
          "/pro": (BuildContext context) => Pro(),
          "/home": (BuildContext context) => const Home(),
          "/components": (BuildContext context) => Components(),
          "/profile": (BuildContext context) => Profile(),
          "/settings": (BuildContext context) => const Settings(),
        });
  }
}
