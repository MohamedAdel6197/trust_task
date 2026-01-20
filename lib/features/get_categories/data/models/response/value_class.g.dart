// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueClass _$ValueClassFromJson(Map<String, dynamic> json) => ValueClass(
  value1Tf0: json['1tf0'] == null
      ? null
      : Value1Tf0.fromJson(json['1tf0'] as Map<String, dynamic>),
  valueCugv: json['cugv'] == null
      ? null
      : ValueCugv.fromJson(json['cugv'] as Map<String, dynamic>),
  valueLohb: json['lohb'] == null
      ? null
      : ValueLohb.fromJson(json['lohb'] as Map<String, dynamic>),
  valueG531: json['g531'] == null
      ? null
      : ValueG531.fromJson(json['g531'] as Map<String, dynamic>),
  keywords: json['keywords'] as String?,
  wordCount: json['wordCount'] as String?,
  linkCount: json['linkCount'] as String?,
  headingCount: json['headingCount'] as String?,
  mediaCount: json['mediaCount'] as String?,
  value1Tn8: json['1tn8'] == null
      ? null
      : Value1Tn8.fromJson(json['1tn8'] as Map<String, dynamic>),
  value6Irg: json['6irg'] == null
      ? null
      : Value6Irg.fromJson(json['6irg'] as Map<String, dynamic>),
  valueYbqb: json['ybqb'] == null
      ? null
      : ValueYbqb.fromJson(json['ybqb'] as Map<String, dynamic>),
  valueHtdc: json['htdc'] == null
      ? null
      : ValueHtdc.fromJson(json['htdc'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ValueClassToJson(ValueClass instance) =>
    <String, dynamic>{
      '1tf0': instance.value1Tf0,
      'cugv': instance.valueCugv,
      'lohb': instance.valueLohb,
      'g531': instance.valueG531,
      'keywords': instance.keywords,
      'wordCount': instance.wordCount,
      'linkCount': instance.linkCount,
      'headingCount': instance.headingCount,
      'mediaCount': instance.mediaCount,
      '1tn8': instance.value1Tn8,
      '6irg': instance.value6Irg,
      'ybqb': instance.valueYbqb,
      'htdc': instance.valueHtdc,
    };

ValueCugv _$ValueCugvFromJson(Map<String, dynamic> json) => ValueCugv(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : CugvTimer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ValueCugvToJson(ValueCugv instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

ValueG531 _$ValueG531FromJson(Map<String, dynamic> json) => ValueG531(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : G531Timer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ValueG531ToJson(ValueG531 instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

ValueHtdc _$ValueHtdcFromJson(Map<String, dynamic> json) => ValueHtdc(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : HtdcTimer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ValueHtdcToJson(ValueHtdc instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

ValueLohb _$ValueLohbFromJson(Map<String, dynamic> json) => ValueLohb(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : LohbTimer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ValueLohbToJson(ValueLohb instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

Value1Tf0 _$Value1Tf0FromJson(Map<String, dynamic> json) => Value1Tf0(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : The1Tf0Timer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$Value1Tf0ToJson(Value1Tf0 instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

Value1Tn8 _$Value1Tn8FromJson(Map<String, dynamic> json) => Value1Tn8(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : The1Tn8Timer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$Value1Tn8ToJson(Value1Tn8 instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

Value6Irg _$Value6IrgFromJson(Map<String, dynamic> json) => Value6Irg(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : The6IrgTimer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$Value6IrgToJson(Value6Irg instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

ValueYbqb _$ValueYbqbFromJson(Map<String, dynamic> json) => ValueYbqb(
  name: json['name'] as String?,
  type: json['type'] as String?,
  action: json['action'] as String?,
  actionVal: json['action_val'] == null
      ? null
      : ActionVal.fromJson(json['action_val'] as Map<String, dynamic>),
  timer: json['timer'] == null
      ? null
      : YbqbTimer.fromJson(json['timer'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ValueYbqbToJson(ValueYbqb instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'action': instance.action,
  'action_val': instance.actionVal,
  'timer': instance.timer,
  'roles': instance.roles,
};

ActionVal _$ActionValFromJson(Map<String, dynamic> json) => ActionVal(
  value: json['value'] as String?,
  base: json['base'] as String?,
  visibility: json['visibility'] as String?,
);

Map<String, dynamic> _$ActionValToJson(ActionVal instance) => <String, dynamic>{
  'value': instance.value,
  'base': instance.base,
  'visibility': instance.visibility,
};
