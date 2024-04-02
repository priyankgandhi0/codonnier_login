part of 'codonnier_login_bloc.dart';

/// State for handling login events and states for codonnier login widget.
/// It has four states: initial, loading, loaded, and error.
/// The [initial] state is the default state.
/// The [loading] state is the state when the login is in progress.
/// The [loaded] state is the state when the login is successful.
/// The [error] state is the state when the login is unsuccessful.

@freezed
@factoryMethod
sealed class CodonnierLoginState<T> with _$CodonnierLoginState<T> {

  /// Default state for the login bloc. It is the initial state. It is the default
  /// state when the login bloc is created, when the login bloc is reset, when
  /// the login bloc is disposed and when the login bloc is not in any state.
  const factory CodonnierLoginState.initial() = _Initial;

  /// State for the login bloc when the login is in progress. It is the state when
  /// the login is in progress.
  const factory CodonnierLoginState.loading() = _Loading;

  /// State for the login bloc when the login is successful. It is the state when
  /// the login is successful. The [data] is the data received from the server.
  /// The [data] can be of any type.
  const factory CodonnierLoginState.loaded({required T data}) = _Loaded<T>;

  /// State for the login bloc when the login is unsuccessful. It is the state when
  /// the login is unsuccessful. The [errorMessage] is the error message received
  /// from the server.
  const factory CodonnierLoginState.error({required String? errorMessage}) = _Error<T>;
}
