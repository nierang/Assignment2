import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'collect_data_record.g.dart';

abstract class CollectDataRecord
    implements Built<CollectDataRecord, CollectDataRecordBuilder> {
  static Serializer<CollectDataRecord> get serializer =>
      _$collectDataRecordSerializer;

  @BuiltValueField(wireName: 'Location')
  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CollectDataRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Collect_data');

  static Stream<CollectDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CollectDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CollectDataRecord._();
  factory CollectDataRecord([void Function(CollectDataRecordBuilder) updates]) =
      _$CollectDataRecord;

  static CollectDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCollectDataRecordData({
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    CollectDataRecord.serializer,
    CollectDataRecord(
      (c) => c..location = location,
    ),
  );

  return firestoreData;
}
