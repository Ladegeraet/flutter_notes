import 'package:api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () async {
    final petServiceSwagger = PetServiceSwagger.create();

    final test = await petServiceSwagger.petFindByStatusGet(status: PetFindByStatusGetStatus.available);

    debugPrint(test.toString());
  });
}
