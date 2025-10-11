import 'package:flutter/material.dart';

class MarkBookPolicyPage extends StatelessWidget {
  const MarkBookPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سياسة خصوصية MarkBook'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: SelectableText(
          """
سياسة الخصوصية لتطبيق MarkBook

آخر تحديث: 11 أكتوبر 2025

!!! تنبيه: هذا النص هو مجرد قالب مؤقت !!!
!!! يجب عليك استبداله بسياسة الخصوصية الفعلية لتطبيق MarkBook !!!

1. جمع المعلومات
اشرح هنا ما هي البيانات التي يجمعها تطبيقك (مثل: البريد الإلكتروني، الاسم، بيانات الاستخدام، ...إلخ). إذا كان تطبيقك يستخدم إعلانات AdMob أو تحليلات Firebase، فيجب ذكر ذلك هنا.

2. استخدام المعلومات
وضح كيف تستخدم البيانات التي تجمعها.

3. مشاركة البيانات
اذكر مع من تشارك البيانات (مثل: مزودي خدمة الإعلانات، شركات التحليل).

للتواصل معنا
إذا كان لديك أي أسئلة حول سياسة الخصوصية هذه، يمكنك التواصل معنا عبر البريد الإلكتروني:
dev.alwaleed@gmail.com
""",
          style: TextStyle(fontSize: 16, height: 1.6),
        ),
      ),
    );
  }
}