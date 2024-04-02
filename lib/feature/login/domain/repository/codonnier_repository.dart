import 'package:codonnier_login/exporter.dart';

abstract class CodonnierRepository {
  Future<ResultModel> call(Map<String, dynamic> data,
      Map<String, dynamic> query, Map<String, dynamic> headers);
}
