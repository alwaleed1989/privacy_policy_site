import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ✔️✔️ تأكد من وجود هذا السطر. هذا هو سبب الخطأ غالبًا ✔️✔️
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:privacy_policy_site/real_estate_policy_page.dart';

import 'home_page.dart';
import 'markbook_policy_page.dart';

void main() {
  runApp(const PrivacyPolicyWebsite());
}

class PrivacyPolicyWebsite extends StatelessWidget {
  const PrivacyPolicyWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سياسات خصوصية',
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // ------------------------------------

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.tajawalTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/real-estate-calculator': (context) => const RealEstatePolicyPage(),
        '/markbook': (context) => const MarkBookPolicyPage(),
      },
    );
  }
}