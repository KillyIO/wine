import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/models/count.dart';

import '../../../mocks/firebase_firestore_mocks.dart';
import '../../../utils/constants.dart';

void main() {
  final data = <String, dynamic>{};

  setUp(() {
    data['count'] = 0;
    data['updatedAt'] = testTimeStamp;
    data['uid'] = testCountUID;
  });

  group('Count -', () {
    group(
      'fromFirestore -',
      () {
        test('When DocumentSnapshot null Then return null', () {
          final count = Count.fromFirestore(null);

          expect(count, null);
        });

        test('When DocumentSnapshot.data null Then return null', () {
          final mockDocumentSnapshot = MockDocumentSnapshot();

          when(mockDocumentSnapshot.data()).thenReturn(null);

          final count = Count.fromFirestore(mockDocumentSnapshot);

          expect(count, null);
        });

        test(
          '''When DocumentSnapshot And DocumentSnapshot.data not null Then return Count''',
          () {
            final mockDocumentSnapshot = MockDocumentSnapshot();

            when(mockDocumentSnapshot.data()).thenReturn(data);

            final count = Count.fromFirestore(mockDocumentSnapshot);

            expect(count.count, data['count']);
            expect(count.uid, data['uid']);
            expect(count.updatedAt, data['updatedAt']);
          },
        );
      },
    );
  });
}
