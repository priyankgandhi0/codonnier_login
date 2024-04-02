import 'package:codonnier_login/exporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

/// A widget to display a login form with email and password fields. It sends
/// the data to the server and handles the response. It also displays a progress
/// indicator when the login is in progress.
///
/// It uses the [CodonnierLoginBloc] to handle the login state.
/// It uses the [ResponseHandler] to handle the response.

class CodonnierLogin extends StatelessWidget {
  /// Creates a demo login widget with predefined fields Email and Password.
  ///
  /// [fields] is a list of maps with keys 'key', 'label', and 'value'.
  /// [key] is used to identify the field whether it is email or password and
  /// later it is used to send the data to the server.
  /// [label] is the text to be displayed on the text field.
  /// [value] is the value of the text field.
  ///
  /// [buttonText] is the text to be displayed on the login button. If it is
  /// not provided, 'Login' will be displayed.
  ///
  /// [progress] is the widget to be displayed when the login is in progress. If
  /// it is not provided, a circular progress indicator will be displayed.
  ///
  /// [queryParameters] is the query parameters to be sent with the request. If
  /// it is not provided, an empty map will be sent.
  ///
  /// [headers] is the headers to be sent with the request. If it is not
  /// provided, an empty map will be sent.
  ///
  /// [responseHandler] is the function to handle the response. It will receive
  /// the context and the state of the login bloc.
  final List<Map<String, dynamic>> fields;
  final String? buttonText;
  final Widget? progress;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? headers;
  final ResponseHandler responseHandler;

  /// Creates a login widget with email and password fields.
  const CodonnierLogin({
    super.key,
    required this.fields,
    this.buttonText,
    this.progress,
    this.queryParameters,
    this.headers,
    required this.responseHandler,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController textField1Controller = TextEditingController();
    final TextEditingController textField2Controller = TextEditingController();

    return Stack(
      children: [
        BlocListener<CodonnierLoginBloc, CodonnierLoginState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (errorMessage) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(errorMessage ?? 'An error occurred.'),
                  ),
                );
              },
              loaded: (data) {
                responseHandler(context, state);
              },
            );
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: textField1Controller,
                    decoration: InputDecoration(
                      labelText: (fields[0]['label'] as String).isEmpty
                          ? 'Email'
                          : fields[0]['label'],
                      border: const OutlineInputBorder(),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    keyboardType:
                        (fields[0]['key'] == FieldKeys.email.fieldName ||
                                fields[0]['key'] ==
                                    FieldKeys.emailAddress.fieldName ||
                                fields[0]['key'] ==
                                    FieldKeys.email_address.fieldName)
                            ? TextInputType.emailAddress
                            : (fields[0]['key'] == FieldKeys.phone.fieldName ||
                                    fields[0]['key'] ==
                                        FieldKeys.phoneNumber.fieldName ||
                                    fields[0]['key'] ==
                                        FieldKeys.phone_number.fieldName)
                                ? TextInputType.phone
                                : TextInputType.text,
                  ),
                  const Gap(10),
                  TextField(
                    controller: textField2Controller,
                    decoration: InputDecoration(
                      labelText: (fields[1]['label'] as String).isEmpty
                          ? 'Password'
                          : fields[1]['label'],
                      border: const OutlineInputBorder(),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const Gap(10),
                  ElevatedButton(
                    onPressed: () {
                      if (_validate(context, textField1Controller.text,
                          textField2Controller.text)) {
                        fields[0]['value'] = textField1Controller.text;
                        fields[1]['value'] = textField2Controller.text;
                        context
                            .read<CodonnierLoginBloc>()
                            .add(CodonnierLoginEvent.call(
                              data: RequestData(
                                fields: fields,
                                queryParameter: queryParameters ?? {},
                                header: headers ?? {},
                              ).toJson(),
                            ));
                      }
                    },
                    child: Text(buttonText ?? 'Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
        BlocBuilder<CodonnierLoginBloc, CodonnierLoginState>(
          buildWhen: (oldState, newState) {
            return newState != const CodonnierLoginState.initial();
          },
          builder: (context, state) {
            return Center(
              child: Visibility(
                visible: state == const CodonnierLoginState.loading(),
                child: progress ?? const CircularProgressIndicator(),
              ),
            );
          },
        )
      ],
    );
  }

  bool _validate(BuildContext context, String email, String password) {
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add email address.'),
        ),
      );
      return false;
    }
    if (!email.isValidEmail) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add valid email address.'),
        ),
      );
      return false;
    }
    if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add password.'),
        ),
      );
      return false;
    }
    return true;
  }
}
