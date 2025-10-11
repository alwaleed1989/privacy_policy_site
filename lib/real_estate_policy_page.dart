import 'package:flutter/material.dart';

// -- النص العربي --
const String arabicPolicyText = """
سياسة الخصوصية لتطبيق حاسبة العقار

آخر تحديث: 11 أكتوبر 2025

نحن نهتم بخصوصيتك ونؤكد على حماية معلوماتك. توضح هذه السياسة كيفية تعاملنا مع البيانات في تطبيق "حاسبة العقار".

1. جمع المعلومات
لا يقوم تطبيق "حاسبة العقار" بجمع أي نوع من أنواع البيانات أو المعلومات الشخصية من المستخدمين. جميع الحسابات والمدخلات تتم محليًا على جهازك فقط ولا يتم إرسالها أو تخزينها على أي خوادم خارجية.

2. استخدام المعلومات
بما أن التطبيق لا يجمع أي معلومات، فلا يتم استخدام أو مشاركة أي معلومات شخصية.

3. تحليل سلوك المستخدم
لا يقوم التطبيق بتحليل سلوك المستخدم أو تتبع نشاطه بأي شكل من الأشكال.

للتواصل معنا
إذا كان لديك أي أسئلة حول سياسة الخصوصية هذه، يمكنك التواصل معنا عبر البريد الإلكتروني:
dev.alwaleed@gmail.com
""";

// -- النص الإنجليزي --
const String englishPolicyText = """
Privacy Policy for Real Estate Calculator App

Last Updated: October 11, 2025

We care about your privacy and are committed to protecting your information. This policy explains how we handle data in the "Real Estate Calculator" application.

1. Information Collection
The "Real Estate Calculator" application does not collect any type of data or personal information from users. All calculations and inputs are processed locally on your device only and are not sent to or stored on any external servers.

2. Use of Information
Since the application does not collect any information, no personal information is used or shared.

3. User Behavior Analysis
The application does not analyze user behavior or track user activity in any way.

Contact Us
If you have any questions about this Privacy Policy, you can contact us via email:
dev.alwaleed@gmail.com
""";


class RealEstatePolicyPage extends StatelessWidget {
  const RealEstatePolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سياسة خصوصية حاسبة العقار'),
      ),
      // ✔️ MODIFIED: استخدمنا Row لتقسيم الشاشة
      body: Row(
        // نجعل اتجاه الصف من اليمين لليسار ليناسب اللغة العربية أولاً
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -- القسم الأيمن: اللغة العربية --
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32.0),
              child: SelectableText(
                arabicPolicyText,
                style: const TextStyle(fontSize: 16, height: 1.6),
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ),
          ),

          // -- فاصل عمودي بين القسمين --
          const VerticalDivider(width: 1, thickness: 1),

          // -- القسم الأيسر: اللغة الإنجليزية --
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32.0),
              child: SelectableText(
                englishPolicyText,
                style: const TextStyle(fontSize: 16, height: 1.6),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}