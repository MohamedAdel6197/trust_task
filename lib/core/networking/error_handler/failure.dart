import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';

@JsonSerializable()
class Failure {
  final int errorCode;
  @JsonKey(name: 'message')
  final String? errorMessage;

  Failure(this.errorCode, this.errorMessage);

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);

  Map<String, dynamic> toJson() => _$FailureToJson(this);
}
