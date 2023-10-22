import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/core/utils/mock_url_launcher.dart';
import 'package:guardian_flutter/feature/home/widgets/news_item_widget.dart';
import 'package:guardian_flutter/feature/home/wrapper/news_item_wrapper.dart';
import 'package:integration_test/integration_test.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  MockUrlLauncher mockUrlLauncher;

  testWidgets('News Item Widget, View displayed', (WidgetTester tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await tester.pumpWidget(_newsItemMockScreen);

    await tester.pumpAndSettle();

    final Finder newsItemTitle = find.text(_wrapper.title);
    final Finder newsItemDescription = find.text(_wrapper.description);
    final Finder newsItemImage = find.image(
      AssetImage(_wrapper.imageUrl),
    );

    expect(newsItemTitle, findsOneWidget);
    expect(newsItemDescription, findsOneWidget);
    expect(newsItemImage, findsOneWidget);
  });

  // Not sure if NewsItem Widget is opening Url or is it the Link Widget
  // Couldnt find easiest way in short time
  testWidgets('News Item Widget, WebView opened', (WidgetTester tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();
    mockUrlLauncher = MockUrlLauncher();
    UrlLauncherPlatform.instance = mockUrlLauncher;

    FollowLink? followLink;

    await tester.pumpWidget(
      Link(
        uri: Uri.parse(_wrapper.webUrl),
        target: LinkTarget.self,
        builder: (BuildContext context, FollowLink? followLink2) {
          followLink = followLink2;
          return _newsItemMockScreen;
        },
      ),
    );

    mockUrlLauncher
      ..setLaunchExpectations(
        url: _wrapper.webUrl,
        launchMode: PreferredLaunchMode.inAppWebView,
        universalLinksOnly: false,
        enableJavaScript: true,
        enableDomStorage: true,
        headers: <String, String>{},
        webOnlyWindowName: null,
      )
      ..setResponse(true);
    await followLink!();
    expect(mockUrlLauncher.launchCalled, isTrue);
  });
}

NewsItemWrapper _wrapper = const NewsItemWrapper(
  'Harry Potta and the £4.50 chocolate frog | Alice O Keeffe',
  'assets/images/default_image.jpg',
  'I was delighted when my son discovered JK Rowling s books',
  'https://www.theguardian.com/commentisfree/2017/dec/12/harry-potter-magic-jk-rowling',
);

MaterialApp _newsItemMockScreen = MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text(
        'Home Screen',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    body: Column(
      children: <Widget>[
        NewsItemWidget(wrapper: _wrapper),
      ],
    ),
  ),
);
