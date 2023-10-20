import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_bloc.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_event.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_state.dart';
import 'package:guardian_flutter/feature/home/page/home_screen.dart';
import 'package:mockito/annotations.dart';
import 'home_screen_test.mocks.dart';

class MockHomeRemoteBloc extends MockBloc<HomeRemoteEvent, HomeRemoteState>
    implements HomeRemoteBloc {}

@GenerateMocks(<Type>[StackRouter])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late StackRouter mockStackRouter;
  setUpAll(() {
    configureInjectionTest();
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

}
