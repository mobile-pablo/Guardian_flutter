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
import 'package:guardian_flutter/networking/utils/util.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRemoteBloc extends MockBloc<HomeRemoteEvent, HomeRemoteState>
    implements HomeRemoteBloc {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockHomeRemoteBloc mockHomeRemoteBloc;
  final NewsDTOMapper _newsDTOMapper = NewsDTOMapper();
  setUpAll(() async {
    cleanCache();
    configureInjectionTest();
    mockHomeRemoteBloc = MockHomeRemoteBloc();
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
    'Home Screen, Error screen is displayed',
    (WidgetTester tester) async {
      when(() => mockHomeRemoteBloc.state)
          .thenReturn(HomeRemoteNewsError(Exception('Error')));

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

      expect(
          find.descendant(
            of: find.byType(Center),
            matching: find.byType(Text),
          ),
          findsOneWidget);
    },
  );

  testWidgets(
    'Home Screen, Loaded screen is displayed',
    (WidgetTester tester) async {
      List<NewsItem> newsItems = await getGuardianMockNewsItems();
      List<NewsItemDTO> newsItemsDTO = newsItems
          .map((NewsItem e) => _newsDTOMapper.convert<NewsItem, NewsItemDTO>(e))
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
}
