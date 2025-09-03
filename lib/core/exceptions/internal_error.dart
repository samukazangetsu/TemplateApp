import 'package:template_app/core/exceptions/i_error.dart';

class InternalError implements IError {
  final String _message;

  InternalError(this._message);

  @override
  String get message => _message;
}
