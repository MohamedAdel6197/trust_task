import 'package:json_annotation/json_annotation.dart';

part 'date.g.dart';

@JsonSerializable()
class Date {
  DateTime? date;
  @JsonKey(name: "timezone_type")
  int? timezoneType;
  String? timezone;

  Date({this.date, this.timezoneType, this.timezone});

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  Map<String, dynamic> toJson() => _$DateToJson(this);
  //
}
