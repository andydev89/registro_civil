import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';

// This method shows a success alert with a message and a payload.

void _success(String message) {
  final payload = <String, dynamic>{};
  payload['data'] = 'content';
  AlertController.show(
    'Success',
    message,
    TypeAlert.success,
    payload,
  );
}

// This method shows a warning alert with a message.
void _warning(String message) {
  AlertController.show('Warn!', message, TypeAlert.warning);
}

// This method shows an error alert with a message.
void _error(String message) {
  AlertController.show('Error', message, TypeAlert.error);
}

// This method takes in a message and type of alert as parameters,
//and calls the appropriate methods depending on the type of alert.
void showAlert(String message, TypeAlert type) {
  <TypeAlert, void Function(String)>{
    TypeAlert.success: _success,
    TypeAlert.warning: _warning,
    TypeAlert.error: _error,
  }[type]!(message);
}
