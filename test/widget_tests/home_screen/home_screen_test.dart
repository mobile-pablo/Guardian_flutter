import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/feature/home/page/home_screen.dart';
import 'package:guardian_flutter/networking/service/guardian_service.dart';
import 'package:mockito/annotations.dart';

import 'home_screen_test.mocks.dart';

@GenerateMocks(<Type>[StackRouter, GuardianService])

void main() {
  configureInjection();
  TestWidgetsFlutterBinding.ensureInitialized();

  late StackRouter mockStackRouter;
  setUpAll(() {
    mockStackRouter = MockStackRouter();
  });

  testWidgets('Navigate to Initial Screen, Title is Displayed',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      StackRouterScope(
        controller: mockStackRouter,
        stateHash: 0,
        child: HomeScreen(
          key: UniqueKey(),
        ),  
      )
    );

    expect(find.text('Home Screen'), findsOneWidget);
  });
}
