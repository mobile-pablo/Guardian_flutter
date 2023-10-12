import 'package:auto_route/auto_route.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/feature/home/page/home_screen.dart';
import 'package:mockito/annotations.dart';

import 'home_screen.mocks.dart';


void setupDependencyInjection() {
  GetIt.instance.registerSingleton<HomeScreen>(const HomeScreen());
}

@GenerateMocks(<Type>[StackRouter])
void main() {
  setupDependencyInjection();
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Navigate to Initial Screen, Title is Displayed',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      StackRouterScope(
        controller: MockStackRouter(),
        stateHash: 0,
        child: getIt<HomeScreen>(),
      ),
    );

    Future<dynamic>.delayed(const Duration(seconds: 20));
    expect(find.text('Guardian News'), findsOneWidget);
  });
}
