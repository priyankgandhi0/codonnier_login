import 'package:codonnier_login/exporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CodonnierLoginBuilder extends StatelessWidget {
  final Builder builder;
  final String baseUrl;
  final RestClient restClient;

  CodonnierLoginBuilder({
    super.key,
    required this.builder,
    required this.baseUrl,
  }) : restClient = RestClient(baseUrl: baseUrl, token: '');

  @override
  Widget build(BuildContext context) {
    setupLocator();
    return MultiRepositoryProvider(
      providers: [
        BlocProvider<CodonnierLoginBloc>(create: (_) => locator()),
      ],
      child: builder(context),
    );
  }
}

typedef Builder = Widget Function(BuildContext context);
