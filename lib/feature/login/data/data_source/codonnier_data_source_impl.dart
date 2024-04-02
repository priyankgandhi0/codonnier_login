import 'package:codonnier_login/exporter.dart';
import 'package:codonnier_network/network/api_type.dart';
import 'package:injectable/injectable.dart';

/// [CodonnierDataSource] is an abstract class that is used to call the server
/// to get the data. It is a singleton class that is used to call the server
/// to get the data.
@LazySingleton(as: CodonnierDataSource)
class CodonnierDataSourceImpl implements CodonnierDataSource {

  /// [call] is a method that is used to call the server to get the data. It takes
  /// [data], [query], and [headers] as parameters and returns a [Future] object.
  /// It is an abstract method that is implemented in the [CodonnierDataSourceImpl]
  /// class.
  @override
  Future<dynamic> call(Map<String, dynamic> data, Map<String, dynamic> query,
      Map<String, dynamic> headers) async {
    return await RestClient.instance.post(
      APIType.public,
      data,
      query: query,
      headers: headers,
    );
  }
}
