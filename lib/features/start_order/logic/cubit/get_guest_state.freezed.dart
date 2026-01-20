// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_guest_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetGuestState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuestState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetGuestState<$T>()';
}


}

/// @nodoc
class $GetGuestStateCopyWith<T,$Res>  {
$GetGuestStateCopyWith(GetGuestState<T> _, $Res Function(GetGuestState<T>) __);
}


/// Adds pattern-matching-related methods to [GetGuestState].
extension GetGuestStatePatterns<T> on GetGuestState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial<T> value)?  initial,TResult Function( Loading<T> value)?  loading,TResult Function( Success<T> value)?  success,TResult Function( Failure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial<T> value)  initial,required TResult Function( Loading<T> value)  loading,required TResult Function( Success<T> value)  success,required TResult Function( Failure<T> value)  failure,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Failure():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial<T> value)?  initial,TResult? Function( Loading<T> value)?  loading,TResult? Function( Success<T> value)?  success,TResult? Function( Failure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Guest guest)?  success,TResult Function( ErrorHandler error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.guest);case Failure() when failure != null:
return failure(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Guest guest)  success,required TResult Function( ErrorHandler error)  failure,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.guest);case Failure():
return failure(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Guest guest)?  success,TResult? Function( ErrorHandler error)?  failure,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.guest);case Failure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class Initial<T> implements GetGuestState<T> {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetGuestState<$T>.initial()';
}


}




/// @nodoc


class Loading<T> implements GetGuestState<T> {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetGuestState<$T>.loading()';
}


}




/// @nodoc


class Success<T> implements GetGuestState<T> {
  const Success(this.guest);
  

 final  Guest guest;

/// Create a copy of GetGuestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&(identical(other.guest, guest) || other.guest == guest));
}


@override
int get hashCode => Object.hash(runtimeType,guest);

@override
String toString() {
  return 'GetGuestState<$T>.success(guest: $guest)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res> implements $GetGuestStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 Guest guest
});




}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of GetGuestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? guest = null,}) {
  return _then(Success<T>(
null == guest ? _self.guest : guest // ignore: cast_nullable_to_non_nullable
as Guest,
  ));
}


}

/// @nodoc


class Failure<T> implements GetGuestState<T> {
  const Failure(this.error);
  

 final  ErrorHandler error;

/// Create a copy of GetGuestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<T, Failure<T>> get copyWith => _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GetGuestState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res> implements $GetGuestStateCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$FailureCopyWithImpl<T,$Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

/// Create a copy of GetGuestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Failure<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
