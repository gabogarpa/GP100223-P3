// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Importa el paquete de Cloud Functions
import 'package:cloud_functions/cloud_functions.dart';

/// Define la acción asíncrona que devolverá un tipo dinámico (JSON)
Future<dynamic> callGenerateSecret() async {
  // Obtiene una instancia de la función de Firebase por su nombre exacto
  final HttpsCallable callable =
      FirebaseFunctions.instance.httpsCallable('generateTotpSecret');
  try {
    // Llama a la función sin pasarle argumentos (usa el contexto de autenticación)
    final HttpsCallableResult result = await callable.call();
    // Devuelve el objeto JSON completo recibido desde la función
    // (Este JSON contendrá 'success', 'qrCodeDataUrl', y 'secretKey')
    return result.data;
  } catch (e) {
    // Imprime el error en la consola para depuración
    print('Error llamando a generateTotpSecret: $e');
    // Devuelve un JSON indicando el error si la llamada falla
    return {'success': false, 'error': e.toString()};
  }
}
