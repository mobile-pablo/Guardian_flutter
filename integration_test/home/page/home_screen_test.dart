import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/cache.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/domain/mapper/news_dto_mapper.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_bloc.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_event.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_state.dart';
import 'package:guardian_flutter/feature/home/page/home_screen.dart';
import 'package:guardian_flutter/feature/home/widgets/news_item_widget.dart';
import 'package:guardian_flutter/feature/home/wrapper/news_item_wrapper.dart';
import 'package:guardian_flutter/networking/utils/util.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRemoteBloc extends MockBloc<HomeRemoteEvent, HomeRemoteState>
    implements HomeRemoteBloc {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockHomeRemoteBloc mockHomeRemoteBloc;
  final NewsDTOMapper newsDTOMapper = NewsDTOMapper();

  setUpAll(() {
    configureInjectionTest();
    mockHomeRemoteBloc = MockHomeRemoteBloc();
  });

  setUp(() async {
    cleanCache();
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  testWidgets(
    'Home Screen, Loading screen is displayed',
    (WidgetTester tester) async {
      when(() => mockHomeRemoteBloc.state)
          .thenReturn(const HomeRemoteNewsLoading());

      await tester.pumpWidget(
        BlocProvider<MockHomeRemoteBloc>.value(
          value: mockHomeRemoteBloc,
          child: MaterialApp(
            home: HomeScreen(
              key: UniqueKey(),
            ),
          ),
        ),
      );

      expect(
          find.descendant(
            of: find.byType(Center),
            matching: find.byType(CupertinoActivityIndicator),
          ),
          findsOneWidget);
    },
  );

  testWidgets(
    'Home Screen, Loaded screen is displayed',
    (WidgetTester tester) async {
      List<NewsItem> newsItems = await getGuardianMockNewsItems();
      List<NewsItemDTO> newsItemsDTO = newsItems
          .map((NewsItem e) => newsDTOMapper.convert<NewsItem, NewsItemDTO>(e))
          .toList();

      when(() => mockHomeRemoteBloc.state)
          .thenReturn(HomeRemoteNewsDone(newsItemsDTO));

      await tester.pumpWidget(
        BlocProvider<MockHomeRemoteBloc>.value(
          value: mockHomeRemoteBloc,
          child: MaterialApp(
            home: HomeScreen(
              key: UniqueKey(),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.textContaining('Harry Potta'), findsOneWidget);
    },
  );

  testWidgets('News Item Widget, View displayed', (WidgetTester tester) async {
    NewsItemWrapper wrapper = const NewsItemWrapper(
      'Harry Potta and the £4.50 chocolate frog | Alice O Keeffe',
      'assets/images/default_image.jpg',
      'I was delighted when my son discovered JK Rowling s books',
      'https://www.theguardian.com/harry-potter-magic-jk-rowling',
    );
    await tester.pumpWidget(
      MaterialApp(
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
              NewsItemWidget(wrapper: wrapper),
            ],
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final Finder newsItemTitle = find.text(wrapper.title);
    final Finder newsItemDescription = find.text(wrapper.description);
    final Finder newsItemImage = find.image(AssetImage(wrapper.imageUrl));

    expect(newsItemTitle, findsOneWidget);
    expect(newsItemDescription, findsOneWidget);
    expect(newsItemImage, findsOneWidget);
  });
}
