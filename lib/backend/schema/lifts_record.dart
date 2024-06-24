import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LiftsRecord extends FirestoreRecord {
  LiftsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "liftname" field.
  String? _liftname;
  String get liftname => _liftname ?? '';
  bool hasLiftname() => _liftname != null;

  // "departureAddress" field.
  String? _departureAddress;
  String get departureAddress => _departureAddress ?? '';
  bool hasDepartureAddress() => _departureAddress != null;

  // "destinationAddress" field.
  String? _destinationAddress;
  String get destinationAddress => _destinationAddress ?? '';
  bool hasDestinationAddress() => _destinationAddress != null;

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "rideshare_members" field.
  List<DocumentReference>? _rideshareMembers;
  List<DocumentReference> get rideshareMembers => _rideshareMembers ?? const [];
  bool hasRideshareMembers() => _rideshareMembers != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "availlableSeats" field.
  int? _availlableSeats;
  int get availlableSeats => _availlableSeats ?? 0;
  bool hasAvaillableSeats() => _availlableSeats != null;

  void _initializeFields() {
    _liftname = snapshotData['liftname'] as String?;
    _departureAddress = snapshotData['departureAddress'] as String?;
    _destinationAddress = snapshotData['destinationAddress'] as String?;
    _day = snapshotData['day'] as DateTime?;
    _time = snapshotData['time'] as DateTime?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _rideshareMembers = getDataList(snapshotData['rideshare_members']);
    _cost = castToType<int>(snapshotData['cost']);
    _availlableSeats = castToType<int>(snapshotData['availlableSeats']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lifts');

  static Stream<LiftsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LiftsRecord.fromSnapshot(s));

  static Future<LiftsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LiftsRecord.fromSnapshot(s));

  static LiftsRecord fromSnapshot(DocumentSnapshot snapshot) => LiftsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LiftsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LiftsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LiftsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LiftsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLiftsRecordData({
  String? liftname,
  String? departureAddress,
  String? destinationAddress,
  DateTime? day,
  DateTime? time,
  DocumentReference? createdBy,
  int? cost,
  int? availlableSeats,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'liftname': liftname,
      'departureAddress': departureAddress,
      'destinationAddress': destinationAddress,
      'day': day,
      'time': time,
      'created_by': createdBy,
      'cost': cost,
      'availlableSeats': availlableSeats,
    }.withoutNulls,
  );

  return firestoreData;
}

class LiftsRecordDocumentEquality implements Equality<LiftsRecord> {
  const LiftsRecordDocumentEquality();

  @override
  bool equals(LiftsRecord? e1, LiftsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.liftname == e2?.liftname &&
        e1?.departureAddress == e2?.departureAddress &&
        e1?.destinationAddress == e2?.destinationAddress &&
        e1?.day == e2?.day &&
        e1?.time == e2?.time &&
        e1?.createdBy == e2?.createdBy &&
        listEquality.equals(e1?.rideshareMembers, e2?.rideshareMembers) &&
        e1?.cost == e2?.cost &&
        e1?.availlableSeats == e2?.availlableSeats;
  }

  @override
  int hash(LiftsRecord? e) => const ListEquality().hash([
        e?.liftname,
        e?.departureAddress,
        e?.destinationAddress,
        e?.day,
        e?.time,
        e?.createdBy,
        e?.rideshareMembers,
        e?.cost,
        e?.availlableSeats
      ]);

  @override
  bool isValidKey(Object? o) => o is LiftsRecord;
}
