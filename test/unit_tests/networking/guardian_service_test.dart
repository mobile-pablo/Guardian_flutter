import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/networking/service/guardian_service.dart';
import 'package:mockito/annotations.dart';

import 'guardian_service_test.dart';

@GenerateMocks([GuardianService])
void main() {
  GuardianService mockGuardianService;
  setUpAll(() {
    mockGuardianService = MockGuardianService();
  });

  test('Get news', () async {
    await mockGuardianService.getNews(
        query: "Dogs", showFields: "thumbnail,bodyText");
  });
}
