// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/core/utils/cache.dart';
import 'package:guardian_flutter/feature/home/widgets/news_item_widget.dart';
import 'package:guardian_flutter/feature/home/wrapper/news_item_wrapper.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();


  setUp(() async {
    cleanCache();
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  NewsItemWrapper wrapper = const NewsItemWrapper(
    'Harry Potta and the £4.50 chocolate frog | Alice O Keeffe',
    'assets/images/default_image.jpg',
    'I was delighted when my son discovered JK Rowling s books',
    'https://www.theguardian.com/harry-potter-magic-jk-rowling',
  );

  MaterialApp newsItemMockScreen = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: NewsItemWidget(wrapper: wrapper),
          );
        },
      ),
    ),
  );

  testWidgets('News Item Widget, View displayed', (WidgetTester tester) async {
    await tester.pumpWidget(newsItemMockScreen);

    await tester.pumpAndSettle();

    final Finder newsItemTitle = find.text(wrapper.title);
    final Finder newsItemDescription = find.text(wrapper.description);

    expect(newsItemTitle, findsOneWidget);
    expect(newsItemDescription, findsOneWidget);
 
}
