import 'package:codonnier_login/exporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

/// A widget to display a register form with email and password fields. It sends
/// the data to the server and handles the response. It also displays a progress
/// indicator when the register is in progress.
///
/// It uses the [CodonnierLoginBloc] to handle the register state.
/// It uses the [ResponseHandler] to handle the response.
/// It uses the [RequestData] to send the data to the server.
/// It uses the [FieldData] to send the field data to the server.
/// It uses the [FieldKeys] to identify the field type.
class CodonnierRegister extends StatelessWidget {

  /// Creates a demo register widget with predefined fields Email and Password.
  ///
  /// [fields] is a list of maps with keys 'key', 'label', and 'value'.
  /// [key] is used to identify the field whether it is email or password and
  /// later it is used to send the data to the server.
  /// [label] is the text to be displayed on the text field.
  /// [value] is the value of the text field.
  ///
  /// [buttonText] is the text to be displayed on the register button. If it is
  /// not provided, 'Register' will be displayed.
  ///
  /// [progress] is the widget to be displayed when the register is in progress. If
  /// it is not provided, a circular progress indicator will be displayed.
  ///
  /// [queryParameters] is the query parameters to be sent with the request. If
  /// it is not provided, an empty map will be sent.
  ///
  /// [headers] is the headers to be sent with the request. If it is not
  /// provided, an empty map will be sent.
  ///
  /// [responseHandler] is the function to handle the response. It will receive
  /// the context and the state of the register bloc.
  ///
  /// [textControllers] is the list of text controllers to be used in the text fields.
  /// It is used to get the text from the text fields.
  final List<Map<String, dynamic>> fields;
  final String? buttonText;
  final Widget? progress;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? headers;
  final ResponseHandler responseHandler;

  /// Creates a register widget with email and password fields.
  const CodonnierRegister({
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
    List<TextEditingController> textControllers =
        List.generate(fields.length, (index) => TextEditingController());

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
                  Column(
                    children: List.generate(fields.length, (i) {
                      return Column(
                        children: [
                          TextField(
                            controller: textControllers[i],
                            decoration: InputDecoration(
                              labelText: fields[i]['label'],
                              border: const OutlineInputBorder(),
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            keyboardType:
                            (fields[i]['key'] == FieldKeys.email.fieldName ||
                                fields[i]['key'] ==
                                    FieldKeys.emailAddress.fieldName ||
                                fields[i]['key'] ==
                                    FieldKeys.email_address.fieldName)
                                ? TextInputType.emailAddress
                                : (fields[i]['key'] == FieldKeys.phone.fieldName ||
                                fields[i]['key'] ==
                                    FieldKeys.phoneNumber.fieldName ||
                                fields[i]['key'] ==
                                    FieldKeys.phone_number.fieldName)
                                ? TextInputType.phone
                                : TextInputType.text,
                          ),
                          const Gap(10),
                        ],
                      );
                    }),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      for (var element in fields) {
                        element['value'] =
                            textControllers[fields.indexOf(element)].text;
                      }
                      context
                          .read<CodonnierLoginBloc>()
                          .add(CodonnierLoginEvent.call(
                            data: RequestData(
                              fields: fields,
                              queryParameter: queryParameters ?? {},
                              header: headers ?? {},
                            ).toJson(),
                          ));
                    },
                    child: Text(buttonText ?? 'Register'),
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
}
