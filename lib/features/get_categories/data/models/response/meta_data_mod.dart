import 'package:json_annotation/json_annotation.dart';

part 'meta_data_mod.g.dart';

@JsonSerializable()
class MetaDataMod {
  int? id;
  String? key;
  dynamic value;

  MetaDataMod({this.id, this.key, this.value});

  factory MetaDataMod.fromJson(Map<String, dynamic> json) =>
      _$MetaDataModFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDataModToJson(this);
}
