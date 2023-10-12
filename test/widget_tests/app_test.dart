import 'package:auto_route/auto_route.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/feature/home/page/home_screen.dart';
import 'package:mockito/annotations.dart';

import 'app_test.mocks.dart';

@GenerateMocks(<Type>[StackRouter])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Navigate to Initial Screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      StackRouterScope(
        controller: MockStackRouter(),
        stateHash: 0,
        child: const HomeScreen(),
      ),
    );
    Future<dynamic>.delayed(const Duration(seconds: 20));
    expect(find.text('Guardian News'), findsOneWidget);
  });
}
