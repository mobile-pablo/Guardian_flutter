// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/core/utils/mock_url_launcher.dart';
import 'package:guardian_flutter/feature/home/widgets/news_item_widget.dart';
import 'package:guardian_flutter/feature/home/wrapper/news_item_wrapper.dart';
import 'package:integration_test/integration_test.dart';
import 'package:url_launcher_platform_interface/src/url_launcher_platform.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  MockUrlLauncher mockUrlLauncher;
  NewsItemWrapper wrapper = const NewsItemWrapper(
    'Harry Potta and the £4.50 chocolate frog | Alice O Keeffe',
    'assets/images/default_image.jpg',
    'I was delighted when my son discovered JK Rowling s books',
    'https://www.theguardian.com/commentisfree/2017/dec/12/harry-potter-magic-jk-rowling',
  );

  setUp(() {
    mockUrlLauncher = MockUrlLauncher();
    UrlLauncherPlatform.instance = mockUrlLauncher;
  });
  testWidgets('News Item Widget, View is displayed',
      (WidgetTester tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await tester.pumpWidget(
      MaterialApp(
        home: Localizations(
          locale: const Locale('en', 'US'),
          delegates: const <LocalizationsDelegate<dynamic>>[
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
          ],
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
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
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final Finder newsItemTitle = find.textContaining('Harry Potta');
    final Finder newsItemDescription = find.textContaining('I was delighted');
    final Finder newsItemImage = find.image(
      const AssetImage('assets/images/default_image.jpg'),
    );

    expect(newsItemTitle, findsOneWidget);
    expect(newsItemDescription, findsOneWidget);
    expect(newsItemImage, findsOneWidget);
  });
}
