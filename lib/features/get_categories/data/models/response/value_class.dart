import 'package:json_annotation/json_annotation.dart';

import 'all_times.dart';

part 'value_class.g.dart';

@JsonSerializable()
class ValueClass {
  @JsonKey(name: "1tf0")
  Value1Tf0? value1Tf0;
  @JsonKey(name: "cugv")
  ValueCugv? valueCugv;
  @JsonKey(name: "lohb")
  ValueLohb? valueLohb;
  @JsonKey(name: "g531")
  ValueG531? valueG531;

  String? keywords;
  @JsonKey(name: "wordCount")
  String? wordCount;
  @JsonKey(name: "linkCount")
  String? linkCount;
  @JsonKey(name: "headingCount")
  String? headingCount;
  @JsonKey(name: "mediaCount")
  String? mediaCount;

  @JsonKey(name: "1tn8")
  Value1Tn8? value1Tn8;
  @JsonKey(name: "6irg")
  Value6Irg? value6Irg;
  @JsonKey(name: "ybqb")
  ValueYbqb? valueYbqb;
  @JsonKey(name: "htdc")
  ValueHtdc? valueHtdc;

  ValueClass({
    this.value1Tf0,
    this.valueCugv,
    this.valueLohb,
    this.valueG531,
    this.keywords,
    this.wordCount,
    this.linkCount,
    this.headingCount,
    this.mediaCount,
    this.value1Tn8,
    this.value6Irg,
    this.valueYbqb,
    this.valueHtdc,
  });

  factory ValueClass.fromJson(Map<String, dynamic> json) =>
      _$ValueClassFromJson(json);

  Map<String, dynamic> toJson() => _$ValueClassToJson(this);
}

@JsonSerializable()
class ValueCugv {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  CugvTimer? timer;
  List<String>? roles;

  ValueCugv({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory ValueCugv.fromJson(Map<String, dynamic> json) =>
      _$ValueCugvFromJson(json);

  Map<String, dynamic> toJson() => _$ValueCugvToJson(this);
}

@JsonSerializable()
class ValueG531 {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  G531Timer? timer;
  List<String>? roles;

  ValueG531({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory ValueG531.fromJson(Map<String, dynamic> json) =>
      _$ValueG531FromJson(json);

  Map<String, dynamic> toJson() => _$ValueG531ToJson(this);
}

@JsonSerializable()
class ValueHtdc {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  HtdcTimer? timer;
  List<String>? roles;

  ValueHtdc({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory ValueHtdc.fromJson(Map<String, dynamic> json) =>
      _$ValueHtdcFromJson(json);

  Map<String, dynamic> toJson() => _$ValueHtdcToJson(this);
}

@JsonSerializable()
class ValueLohb {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  LohbTimer? timer;
  List<String>? roles;

  ValueLohb({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory ValueLohb.fromJson(Map<String, dynamic> json) =>
      _$ValueLohbFromJson(json);

  Map<String, dynamic> toJson() => _$ValueLohbToJson(this);
}

@JsonSerializable()
class Value1Tf0 {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  The1Tf0Timer? timer;
  List<String>? roles;

  Value1Tf0({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory Value1Tf0.fromJson(Map<String, dynamic> json) =>
      _$Value1Tf0FromJson(json);

  Map<String, dynamic> toJson() => _$Value1Tf0ToJson(this);
}

@JsonSerializable()
class Value1Tn8 {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  The1Tn8Timer? timer;
  List<String>? roles;

  Value1Tn8({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory Value1Tn8.fromJson(Map<String, dynamic> json) =>
      _$Value1Tn8FromJson(json);

  Map<String, dynamic> toJson() => _$Value1Tn8ToJson(this);
}

@JsonSerializable()
class Value6Irg {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  The6IrgTimer? timer;
  List<String>? roles;

  Value6Irg({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory Value6Irg.fromJson(Map<String, dynamic> json) =>
      _$Value6IrgFromJson(json);

  Map<String, dynamic> toJson() => _$Value6IrgToJson(this);
}

@JsonSerializable()
class ValueYbqb {
  String? name;
  String? type;
  String? action;
  @JsonKey(name: "action_val")
  ActionVal? actionVal;
  YbqbTimer? timer;
  List<String>? roles;

  ValueYbqb({
    this.name,
    this.type,
    this.action,
    this.actionVal,
    this.timer,
    this.roles,
  });

  factory ValueYbqb.fromJson(Map<String, dynamic> json) =>
      _$ValueYbqbFromJson(json);

  Map<String, dynamic> toJson() => _$ValueYbqbToJson(this);
}

@JsonSerializable()
class ActionVal {
  String? value;
  String? base;
  String? visibility;

  ActionVal({this.value, this.base, this.visibility});

  factory ActionVal.fromJson(Map<String, dynamic> json) =>
      _$ActionValFromJson(json);

  Map<String, dynamic> toJson() => _$ActionValToJson(this);
}
