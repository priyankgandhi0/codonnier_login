import 'package:codonnier_login/exporter.dart';
import 'package:injectable/injectable.dart';

/// [CodonnierRepositoryImpl] is a class that is used to call the [CodonnierDataSource]
/// to get the data from the server. It is a singleton class that is used to
/// call the [CodonnierDataSource] to get the data from the server. It implements
/// the [CodonnierRepository] class.
@LazySingleton(as: CodonnierRepository)
class CodonnierRepositoryImpl implements CodonnierRepository {
  final CodonnierDataSource dataSource = locator.get<CodonnierDataSource>();

  /// [call] is a method that is used to call the [CodonnierDataSource] to get the
  /// data from the server. It takes [data], [query], and [headers] as parameters
  /// and returns a [ResultModel] object.
  @override
  Future<ResultModel> call(Map<String, dynamic> data,
      Map<String, dynamic> query, Map<String, dynamic> headers) async {
    return await dataSource.call(data, query, headers).guard((data) => data);
  }
}
