import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/data_transfer.dart';
import 'package:guardian_flutter/domain/repository/news_repository.dart';
import 'package:guardian_flutter/domain/use_cases/get_news_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsRepository extends Mock implements NewsRepository {}

void main() {
  late MockNewsRepository mockNewsRepository;

  setUp(() {
    mockNewsRepository = MockNewsRepository();
  });

  test('GetNewsUseCase', () async {
    GetNewsUseCase getNewsUseCase = GetNewsUseCase(mockNewsRepository);

    when(() => getNewsUseCase('Dogs')).thenAnswer((_) async {
      return DataTransfer<List<NewsItemDTO>>(
        data: <NewsItemDTO>[
          NewsItemDTO.empty().copyWith(id: 'Hello world'),
        ],
      );
    });

    expect(
      await getNewsUseCase('Dogs'),
      isA<DataTransfer<List<NewsItemDTO>>>(),
    );

    DataTransfer<List<NewsItemDTO>> result = await getNewsUseCase('Dogs');
    expect(
      result.data[0].id,
      'Hello world',
    );
  });
}
