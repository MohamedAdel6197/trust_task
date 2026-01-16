import 'package:json_annotation/json_annotation.dart';

part 'meta_data_mod.g.dart';

@JsonSerializable()
class MetaDataMod {
  int id;
  String key;
  dynamic value;

  MetaDataMod({required this.id, required this.key, required this.value});

  factory MetaDataMod.fromJson(Map<String, dynamic> json) =>
      _$MetaDataModFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDataModToJson(this);
}
