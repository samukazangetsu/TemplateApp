import 'package:template_app/core/exceptions/i_error.dart';

class ApiError implements IError {
  final String _message;

  ApiError(this._message);

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      ApiError(json['message']);

  @override
  String get message => _message;
}
