// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectDataRecord> _$collectDataRecordSerializer =
    new _$CollectDataRecordSerializer();

class _$CollectDataRecordSerializer
    implements StructuredSerializer<CollectDataRecord> {
  @override
  final Iterable<Type> types = const [CollectDataRecord, _$CollectDataRecord];
  @override
  final String wireName = 'CollectDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CollectDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CollectDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CollectDataRecord extends CollectDataRecord {
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CollectDataRecord(
          [void Function(CollectDataRecordBuilder)? updates]) =>
      (new CollectDataRecordBuilder()..update(updates))._build();

  _$CollectDataRecord._({this.location, this.ffRef}) : super._();

  @override
  CollectDataRecord rebuild(void Function(CollectDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectDataRecordBuilder toBuilder() =>
      new CollectDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectDataRecord &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, location.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectDataRecord')
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CollectDataRecordBuilder
    implements Builder<CollectDataRecord, CollectDataRecordBuilder> {
  _$CollectDataRecord? _$v;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CollectDataRecordBuilder() {
    CollectDataRecord._initializeBuilder(this);
  }

  CollectDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollectDataRecord;
  }

  @override
  void update(void Function(CollectDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectDataRecord build() => _build();

  _$CollectDataRecord _build() {
    final _$result =
        _$v ?? new _$CollectDataRecord._(location: location, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
