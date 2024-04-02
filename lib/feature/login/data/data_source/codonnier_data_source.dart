abstract class CodonnierDataSource {
  Future<dynamic> call(Map<String, dynamic> data, Map<String, dynamic> query,
      Map<String, dynamic> headers);
}
