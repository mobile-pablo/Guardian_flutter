import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_bloc.dart';
import 'package:guardian_flutter/feature/home/page/home_screen.dart';
import 'package:mockito/annotations.dart';
import 'home_screen_test.mocks.dart';

final GetIt sl = GetIt.instance;
final GetIt getIt = GetIt.I;

@GenerateMocks(<Type>[StackRouter, HomeRemoteBloc])
void main() {
  configureDependenciesTest();
  TestWidgetsFlutterBinding.ensureInitialized();

  late StackRouter mockStackRouter;

  setUpAll(() {
    mockStackRouter = MockStackRouter();
  });

  testWidgets('Navigate to Initial Screen, Title is Displayed',
      (WidgetTester tester) async {
    await tester.pumpWidget(StackRouterScope(
      controller: mockStackRouter,
      stateHash: 0,
      child: HomeScreen(
        key: UniqueKey(),
      ),
    ));

    expect(find.text('Home Screen'), findsOneWidget);
  });

  testWidgets(
    'Home Screen, Loading screen is displayed',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(
            key: UniqueKey(),
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
}
