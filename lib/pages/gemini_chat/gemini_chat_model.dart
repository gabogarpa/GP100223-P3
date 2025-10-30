import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'gemini_chat_widget.dart' show GeminiChatWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GeminiChatModel extends FlutterFlowModel<GeminiChatWidget> {
  ///  Local state fields for this page.

  List<ChatDataStruct> listMensajes = [];
  void addToListMensajes(ChatDataStruct item) => listMensajes.add(item);
  void removeFromListMensajes(ChatDataStruct item) => listMensajes.remove(item);
  void removeAtIndexFromListMensajes(int index) => listMensajes.removeAt(index);
  void insertAtIndexInListMensajes(int index, ChatDataStruct item) =>
      listMensajes.insert(index, item);
  void updateListMensajesAtIndex(
          int index, Function(ChatDataStruct) updateFn) =>
      listMensajes[index] = updateFn(listMensajes[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for promptInput widget.
  FocusNode? promptInputFocusNode;
  TextEditingController? promptInputTextController;
  String? Function(BuildContext, String?)? promptInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (GeminiText)] action in Enviar widget.
  ApiCallResponse? apiResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promptInputFocusNode?.dispose();
    promptInputTextController?.dispose();
  }
}
