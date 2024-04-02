import 'dart:async';

import 'package:codonnier_login/exporter.dart';
import 'package:codonnier_login/feature/login/domain/use_case/codonnier_user_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'codonnier_login_bloc.freezed.dart';
part 'codonnier_login_event.dart';
part 'codonnier_login_state.dart';

/// Bloc for handling login events and states for codonnier login widget.

@LazySingleton()
class CodonnierLoginBloc<T>
    extends Bloc<CodonnierLoginEvent, CodonnierLoginState<T>> {
  final CodonnierUserCase codonnierUserCase = locator.get<CodonnierUserCase>();

  CodonnierLoginBloc() : super(const CodonnierLoginState.initial()) {
    on<CodonnierLoginEvent>(_onCodonnierLoginEvent);
  }

  /// Handles the login event for codonnier login widget. It sends the login
  /// request to the server and emits the state accordingly.
  FutureOr<void> _onCodonnierLoginEvent(
      CodonnierLoginEvent event, Emitter<CodonnierLoginState> emit) async {
    emit(const CodonnierLoginState.initial());
    await event.whenOrNull(
      call: (data) async {
        try {
          RequestData loginRequest = RequestData.fromJson(data);
          Map<String, dynamic> requestData = {};
          for (var element in loginRequest.fields) {
            FieldData fieldData = FieldData.fromJson(element);
            requestData[fieldData.key] = fieldData.value;
          }
          emit(const CodonnierLoginState.loading());
          ResultModel result = await codonnierUserCase.call(
            requestData,
            loginRequest.queryParameter,
            loginRequest.header,
          );
          result.when(success: (data) {
            if (data['status'] as int != 1) {
              emit(CodonnierLoginState.error(errorMessage: data['msg']));
              return;
            }
            emit(CodonnierLoginState.loaded(data: data));
          }, error: (error) {
            emit(CodonnierLoginState.error(errorMessage: error.message));
          });
        } on Failure catch (e) {
          emit(CodonnierLoginState.error(errorMessage: e.message));
        }
      },
    );
  }
}
