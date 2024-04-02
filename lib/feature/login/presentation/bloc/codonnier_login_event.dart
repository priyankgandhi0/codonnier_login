part of 'codonnier_login_bloc.dart';

/// Event for handling login events for codonnier login widget.

@freezed
abstract class CodonnierLoginEvent with _$CodonnierLoginEvent {
  /// Event to start the login process.
  const factory CodonnierLoginEvent.started() = _Started;

  /// Event to call the login process and it sends the data to the server.
  /// [data] is the data to be sent to the server.
  const factory CodonnierLoginEvent.call(
      {required Map<String, dynamic> data}) = _Login;
}
