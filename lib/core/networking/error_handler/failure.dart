import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';

@JsonSerializable()
class Failure {
  final String? code;
  final String? message;

  @JsonKey(name: 'data')
  final Map<String, dynamic>? errorDetails;

  Failure(this.code, this.message, this.errorDetails);

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);

  Map<String, dynamic> toJson() => _$FailureToJson(this);

  String get messageOfError => message ?? 'Unknown error (Code: $code)';
}
