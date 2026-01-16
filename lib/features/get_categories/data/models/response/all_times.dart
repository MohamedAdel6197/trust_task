import 'package:json_annotation/json_annotation.dart';

part 'all_times.g.dart';

@JsonSerializable()
class CugvTimer {
  @JsonKey(name: "8l4p")
  Rcm7 the8L4P;

  CugvTimer({required this.the8L4P});

  factory CugvTimer.fromJson(Map<String, dynamic> json) =>
      _$CugvTimerFromJson(json);

  Map<String, dynamic> toJson() => _$CugvTimerToJson(this);
}

@JsonSerializable()
class YbqbTimer {
  @JsonKey(name: "qqap")
  Rcm7 qqap;

  YbqbTimer({required this.qqap});

  factory YbqbTimer.fromJson(Map<String, dynamic> json) =>
      _$YbqbTimerFromJson(json);

  Map<String, dynamic> toJson() => _$YbqbTimerToJson(this);
}

@JsonSerializable()
class The6IrgTimer {
  @JsonKey(name: "v42u")
  Rcm7 v42U;

  The6IrgTimer({required this.v42U});

  factory The6IrgTimer.fromJson(Map<String, dynamic> json) =>
      _$The6IrgTimerFromJson(json);

  Map<String, dynamic> toJson() => _$The6IrgTimerToJson(this);
}

@JsonSerializable()
class The1Tn8Timer {
  @JsonKey(name: "1eow")
  Rcm7 the1Eow;

  The1Tn8Timer({required this.the1Eow});

  factory The1Tn8Timer.fromJson(Map<String, dynamic> json) =>
      _$The1Tn8TimerFromJson(json);

  Map<String, dynamic> toJson() => _$The1Tn8TimerToJson(this);
}

@JsonSerializable()
class The1Tf0Timer {
  @JsonKey(name: "rcm7")
  Rcm7 rcm7;

  The1Tf0Timer({required this.rcm7});

  factory The1Tf0Timer.fromJson(Map<String, dynamic> json) =>
      _$The1Tf0TimerFromJson(json);

  Map<String, dynamic> toJson() => _$The1Tf0TimerToJson(this);
}

@JsonSerializable()
class LohbTimer {
  @JsonKey(name: "kxvt")
  Rcm7 kxvt;

  LohbTimer({required this.kxvt});

  factory LohbTimer.fromJson(Map<String, dynamic> json) =>
      _$LohbTimerFromJson(json);

  Map<String, dynamic> toJson() => _$LohbTimerToJson(this);
}

@JsonSerializable()
class HtdcTimer {
  @JsonKey(name: "0cl9")
  Rcm7 the0Cl9;

  HtdcTimer({required this.the0Cl9});

  factory HtdcTimer.fromJson(Map<String, dynamic> json) =>
      _$HtdcTimerFromJson(json);

  Map<String, dynamic> toJson() => _$HtdcTimerToJson(this);
}

@JsonSerializable()
class G531Timer {
  @JsonKey(name: "3rfl")
  Rcm7 the3Rfl;

  G531Timer({required this.the3Rfl});

  factory G531Timer.fromJson(Map<String, dynamic> json) =>
      _$G531TimerFromJson(json);

  Map<String, dynamic> toJson() => _$G531TimerToJson(this);
}

@JsonSerializable()
class Rcm7 {
  String val;
  String type;

  Rcm7({required this.val, required this.type});

  factory Rcm7.fromJson(Map<String, dynamic> json) => _$Rcm7FromJson(json);

  Map<String, dynamic> toJson() => _$Rcm7ToJson(this);
}
