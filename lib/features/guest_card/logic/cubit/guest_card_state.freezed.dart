// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GuestCardState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestCardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuestCardState()';
}


}

/// @nodoc
class $GuestCardStateCopyWith<$Res>  {
$GuestCardStateCopyWith(GuestCardState _, $Res Function(GuestCardState) __);
}


/// Adds pattern-matching-related methods to [GuestCardState].
extension GuestCardStatePatterns on GuestCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetGuestCartLoading value)?  getGuestCartLoading,TResult Function( GetGuestCartSuccess value)?  getGuestCartSuccess,TResult Function( GetGuestCartError value)?  getGuestCartError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetGuestCartLoading() when getGuestCartLoading != null:
return getGuestCartLoading(_that);case GetGuestCartSuccess() when getGuestCartSuccess != null:
return getGuestCartSuccess(_that);case GetGuestCartError() when getGuestCartError != null:
return getGuestCartError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetGuestCartLoading value)  getGuestCartLoading,required TResult Function( GetGuestCartSuccess value)  getGuestCartSuccess,required TResult Function( GetGuestCartError value)  getGuestCartError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetGuestCartLoading():
return getGuestCartLoading(_that);case GetGuestCartSuccess():
return getGuestCartSuccess(_that);case GetGuestCartError():
return getGuestCartError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetGuestCartLoading value)?  getGuestCartLoading,TResult? Function( GetGuestCartSuccess value)?  getGuestCartSuccess,TResult? Function( GetGuestCartError value)?  getGuestCartError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetGuestCartLoading() when getGuestCartLoading != null:
return getGuestCartLoading(_that);case GetGuestCartSuccess() when getGuestCartSuccess != null:
return getGuestCartSuccess(_that);case GetGuestCartError() when getGuestCartError != null:
return getGuestCartError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getGuestCartLoading,TResult Function( GuestCartResponse guestCartResponse)?  getGuestCartSuccess,TResult Function( ErrorHandler error)?  getGuestCartError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetGuestCartLoading() when getGuestCartLoading != null:
return getGuestCartLoading();case GetGuestCartSuccess() when getGuestCartSuccess != null:
return getGuestCartSuccess(_that.guestCartResponse);case GetGuestCartError() when getGuestCartError != null:
return getGuestCartError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getGuestCartLoading,required TResult Function( GuestCartResponse guestCartResponse)  getGuestCartSuccess,required TResult Function( ErrorHandler error)  getGuestCartError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetGuestCartLoading():
return getGuestCartLoading();case GetGuestCartSuccess():
return getGuestCartSuccess(_that.guestCartResponse);case GetGuestCartError():
return getGuestCartError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getGuestCartLoading,TResult? Function( GuestCartResponse guestCartResponse)?  getGuestCartSuccess,TResult? Function( ErrorHandler error)?  getGuestCartError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetGuestCartLoading() when getGuestCartLoading != null:
return getGuestCartLoading();case GetGuestCartSuccess() when getGuestCartSuccess != null:
return getGuestCartSuccess(_that.guestCartResponse);case GetGuestCartError() when getGuestCartError != null:
return getGuestCartError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GuestCardState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuestCardState.initial()';
}


}




/// @nodoc


class GetGuestCartLoading implements GuestCardState {
  const GetGuestCartLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuestCartLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuestCardState.getGuestCartLoading()';
}


}




/// @nodoc


class GetGuestCartSuccess implements GuestCardState {
  const GetGuestCartSuccess(this.guestCartResponse);
  

 final  GuestCartResponse guestCartResponse;

/// Create a copy of GuestCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGuestCartSuccessCopyWith<GetGuestCartSuccess> get copyWith => _$GetGuestCartSuccessCopyWithImpl<GetGuestCartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuestCartSuccess&&(identical(other.guestCartResponse, guestCartResponse) || other.guestCartResponse == guestCartResponse));
}


@override
int get hashCode => Object.hash(runtimeType,guestCartResponse);

@override
String toString() {
  return 'GuestCardState.getGuestCartSuccess(guestCartResponse: $guestCartResponse)';
}


}

/// @nodoc
abstract mixin class $GetGuestCartSuccessCopyWith<$Res> implements $GuestCardStateCopyWith<$Res> {
  factory $GetGuestCartSuccessCopyWith(GetGuestCartSuccess value, $Res Function(GetGuestCartSuccess) _then) = _$GetGuestCartSuccessCopyWithImpl;
@useResult
$Res call({
 GuestCartResponse guestCartResponse
});




}
/// @nodoc
class _$GetGuestCartSuccessCopyWithImpl<$Res>
    implements $GetGuestCartSuccessCopyWith<$Res> {
  _$GetGuestCartSuccessCopyWithImpl(this._self, this._then);

  final GetGuestCartSuccess _self;
  final $Res Function(GetGuestCartSuccess) _then;

/// Create a copy of GuestCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? guestCartResponse = null,}) {
  return _then(GetGuestCartSuccess(
null == guestCartResponse ? _self.guestCartResponse : guestCartResponse // ignore: cast_nullable_to_non_nullable
as GuestCartResponse,
  ));
}


}

/// @nodoc


class GetGuestCartError implements GuestCardState {
  const GetGuestCartError(this.error);
  

 final  ErrorHandler error;

/// Create a copy of GuestCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGuestCartErrorCopyWith<GetGuestCartError> get copyWith => _$GetGuestCartErrorCopyWithImpl<GetGuestCartError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuestCartError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GuestCardState.getGuestCartError(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetGuestCartErrorCopyWith<$Res> implements $GuestCardStateCopyWith<$Res> {
  factory $GetGuestCartErrorCopyWith(GetGuestCartError value, $Res Function(GetGuestCartError) _then) = _$GetGuestCartErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$GetGuestCartErrorCopyWithImpl<$Res>
    implements $GetGuestCartErrorCopyWith<$Res> {
  _$GetGuestCartErrorCopyWithImpl(this._self, this._then);

  final GetGuestCartError _self;
  final $Res Function(GetGuestCartError) _then;

/// Create a copy of GuestCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetGuestCartError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
