import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/feature/home/page/home_screen.dart';
import 'package:mockito/annotations.dart';

import 'home_screen.mocks.dart';

final GetIt sl = GetIt.instance;

@GenerateMocks(<Type>[StackRouter])
void main() {
  configureInjection();
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Navigate to Initial Screen, Title is Displayed',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      StackRouterScope(
        controller: MockStackRouter(),
        stateHash: 0,
        child: HomeScreen(
          key: UniqueKey(),
        ),
      ),
    );

    Future<dynamic>.delayed(const Duration(seconds: 20));
    expect(find.text('Home Screen'), findsOneWidget);
  });
}
