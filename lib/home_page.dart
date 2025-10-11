import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سياسات الخصوصية لتطبيقاتي'),
        centerTitle: true,
          backgroundColor: Colors.blue[100]
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'اختر التطبيق لعرض سياسة الخصوصية الخاصة به',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Divider(),
            // زر للانتقال لسياسة خصوصية حاسبة العقار
            SizedBox(
              height: 44,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100], // لون الخلفية
                  foregroundColor: Colors.black,       // لون النص والأيقونة
                ),

                onPressed: () {
                  Navigator.pushNamed(context, '/real-estate-calculator');
                },
                child: Row(
                  children: [
                    const Text('تطبيق حاسبة العقار'),
                    const SizedBox(width: 10),
                    const Icon(Icons.calculate)

                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // زر للانتقال لسياسة خصوصية MarkBook
            SizedBox(
              height: 44,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100], // لون الخلفية
                  foregroundColor: Colors.black,       // لون النص والأيقونة
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/markbook');
                },
                child: Row(
                  children: [
                    const Text('تطبيق MarkBook'),
                    const SizedBox(width: 10),
                    const Icon(Icons.book)

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}