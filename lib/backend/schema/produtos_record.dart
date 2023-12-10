import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "emestoque" field.
  bool? _emestoque;
  bool get emestoque => _emestoque ?? false;
  bool hasEmestoque() => _emestoque != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  void _initializeFields() {
    _produto = snapshotData['produto'] as String?;
    _emestoque = snapshotData['emestoque'] as bool?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? produto,
  bool? emestoque,
  int? quantidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'produto': produto,
      'emestoque': emestoque,
      'quantidade': quantidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.produto == e2?.produto &&
        e1?.emestoque == e2?.emestoque &&
        e1?.quantidade == e2?.quantidade;
  }

  @override
  int hash(ProdutosRecord? e) =>
      const ListEquality().hash([e?.produto, e?.emestoque, e?.quantidade]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
