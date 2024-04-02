import 'package:codonnier_login/exporter.dart';
import 'package:injectable/injectable.dart';

/// [CodonnierUserCase] is a class that is used to call the [CodonnierRepository]
/// to get the data from the server. It is a singleton class that is used to
/// call the [CodonnierRepository] to get the data from the server.
@LazySingleton()
class CodonnierUserCase {
  final CodonnierRepository _codonnierRepository;

  /// Constructor for the [CodonnierUserCase] class. It is used to initialize the
  /// [CodonnierRepository] class.
  CodonnierUserCase(this._codonnierRepository);

  /// [call] is a method that is used to call the [CodonnierRepository] to get the
  /// data from the server. It takes [data], [query], and [headers] as parameters
  /// and returns a [ResultModel] object.
  Future<ResultModel> call(Map<String, dynamic> data,
      Map<String, dynamic> query, Map<String, dynamic> headers) async {
    return await _codonnierRepository.call(data, query, headers);
  }
}
