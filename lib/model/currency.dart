class Currency {
  final String name;
  final double value;

  const Currency(this.name, this.value);

  Currency.fromJson(Map<String, dynamic> json)
    : name = json[DataFieldsApi.code] as String,
      value = json[DataFieldsApi.value].toDouble();
}

class DataFieldsApi {
 static const String code = 'code';
 static const String value = 'value';
}