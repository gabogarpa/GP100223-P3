// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatDataStruct extends FFFirebaseStruct {
  ChatDataStruct({
    String? mensaje,
    String? autor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _mensaje = mensaje,
        _autor = autor,
        super(firestoreUtilData);

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  set mensaje(String? val) => _mensaje = val;

  bool hasMensaje() => _mensaje != null;

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  set autor(String? val) => _autor = val;

  bool hasAutor() => _autor != null;

  static ChatDataStruct fromMap(Map<String, dynamic> data) => ChatDataStruct(
        mensaje: data['mensaje'] as String?,
        autor: data['autor'] as String?,
      );

  static ChatDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'mensaje': _mensaje,
        'autor': _autor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mensaje': serializeParam(
          _mensaje,
          ParamType.String,
        ),
        'autor': serializeParam(
          _autor,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatDataStruct(
        mensaje: deserializeParam(
          data['mensaje'],
          ParamType.String,
          false,
        ),
        autor: deserializeParam(
          data['autor'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatDataStruct &&
        mensaje == other.mensaje &&
        autor == other.autor;
  }

  @override
  int get hashCode => const ListEquality().hash([mensaje, autor]);
}

ChatDataStruct createChatDataStruct({
  String? mensaje,
  String? autor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatDataStruct(
      mensaje: mensaje,
      autor: autor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatDataStruct? updateChatDataStruct(
  ChatDataStruct? chatData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatDataStructData(
  Map<String, dynamic> firestoreData,
  ChatDataStruct? chatData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatData == null) {
    return;
  }
  if (chatData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatDataData = getChatDataFirestoreData(chatData, forFieldValue);
  final nestedData = chatDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatDataFirestoreData(
  ChatDataStruct? chatData, [
  bool forFieldValue = false,
]) {
  if (chatData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatData.toMap());

  // Add any Firestore field values
  chatData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatDataListFirestoreData(
  List<ChatDataStruct>? chatDatas,
) =>
    chatDatas?.map((e) => getChatDataFirestoreData(e, true)).toList() ?? [];
