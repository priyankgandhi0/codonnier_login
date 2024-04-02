import 'package:codonnier_login/exporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A widget to display a button with a callback function to handle the button
/// press.
/// It also listens to the [CodonnierLoginBloc] state and handles the
/// response. It uses the [ResponseHandler] to handle the response. It also uses
/// [CodonnierLoginStateLoaded] and [CodonnierLoginStateError] to handle the
/// loaded and error states.

class CodonnierButton extends StatelessWidget {
  /// A function to handle the response. It will receive the context and the state
  /// of the login bloc.
  ///
  /// If [responseHandler] is provided, it will be called when the state changes.
  /// If [codonnierLoginStateLoaded] is provided, it will be called when the state
  /// is loaded.
  /// If [codonnierLoginStateError] is provided, it will be called when the state
  /// has an error.
  /// If [buttonText] is not provided, 'Login' will be displayed on the button. If
  /// [onPressed] is not provided, the button will be disabled.

  final ResponseHandler? responseHandler;
  final CodonnierLoginStateLoaded? codonnierLoginStateLoaded;
  final CodonnierLoginStateError? codonnierLoginStateError;
  final String? buttonText;
  final VoidCallback onPressed;

  /// Creates a button widget with a callback function to handle the button press.
  const CodonnierButton({
    super.key,
    this.responseHandler,
    this.codonnierLoginStateLoaded,
    this.codonnierLoginStateError,
    this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<CodonnierLoginBloc, CodonnierLoginState>(
      listener: (context, state) {
        if (responseHandler != null) {
          responseHandler!(context, state);
        }
        if (codonnierLoginStateLoaded != null) {
          state.whenOrNull(loaded: (data) {
            codonnierLoginStateLoaded!(context, data);
          });
        }
        if (codonnierLoginStateError != null) {
          state.whenOrNull(error: (errorMessage) {
            codonnierLoginStateError!(context, errorMessage);
          });
        }
      },
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(buttonText ?? 'Login'),
      ),
    );
  }
}
