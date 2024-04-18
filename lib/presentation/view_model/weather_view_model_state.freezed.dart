// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherViewModelState _$WeatherViewModelStateFromJson(
    Map<String, dynamic> json) {
  return _WeatherViewModelState.fromJson(json);
}

/// @nodoc
mixin _$WeatherViewModelState {
  List<String> get time => throw _privateConstructorUsedError;
  List<num> get temperature => throw _privateConstructorUsedError;
  List<num> get weatherCode => throw _privateConstructorUsedError;
  List<num> get relativeHumidity => throw _privateConstructorUsedError;
  List<num> get windSpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherViewModelStateCopyWith<WeatherViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherViewModelStateCopyWith<$Res> {
  factory $WeatherViewModelStateCopyWith(WeatherViewModelState value,
          $Res Function(WeatherViewModelState) then) =
      _$WeatherViewModelStateCopyWithImpl<$Res, WeatherViewModelState>;
  @useResult
  $Res call(
      {List<String> time,
      List<num> temperature,
      List<num> weatherCode,
      List<num> relativeHumidity,
      List<num> windSpeed});
}

/// @nodoc
class _$WeatherViewModelStateCopyWithImpl<$Res,
        $Val extends WeatherViewModelState>
    implements $WeatherViewModelStateCopyWith<$Res> {
  _$WeatherViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherCode = null,
    Object? relativeHumidity = null,
    Object? windSpeed = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<num>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<num>,
      relativeHumidity: null == relativeHumidity
          ? _value.relativeHumidity
          : relativeHumidity // ignore: cast_nullable_to_non_nullable
              as List<num>,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherViewModelStateImplCopyWith<$Res>
    implements $WeatherViewModelStateCopyWith<$Res> {
  factory _$$WeatherViewModelStateImplCopyWith(
          _$WeatherViewModelStateImpl value,
          $Res Function(_$WeatherViewModelStateImpl) then) =
      __$$WeatherViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      List<num> temperature,
      List<num> weatherCode,
      List<num> relativeHumidity,
      List<num> windSpeed});
}

/// @nodoc
class __$$WeatherViewModelStateImplCopyWithImpl<$Res>
    extends _$WeatherViewModelStateCopyWithImpl<$Res,
        _$WeatherViewModelStateImpl>
    implements _$$WeatherViewModelStateImplCopyWith<$Res> {
  __$$WeatherViewModelStateImplCopyWithImpl(_$WeatherViewModelStateImpl _value,
      $Res Function(_$WeatherViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherCode = null,
    Object? relativeHumidity = null,
    Object? windSpeed = null,
  }) {
    return _then(_$WeatherViewModelStateImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature: null == temperature
          ? _value._temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<num>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<num>,
      relativeHumidity: null == relativeHumidity
          ? _value._relativeHumidity
          : relativeHumidity // ignore: cast_nullable_to_non_nullable
              as List<num>,
      windSpeed: null == windSpeed
          ? _value._windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherViewModelStateImpl implements _WeatherViewModelState {
  const _$WeatherViewModelStateImpl(
      {final List<String> time = const [],
      final List<num> temperature = const [],
      final List<num> weatherCode = const [],
      final List<num> relativeHumidity = const [],
      final List<num> windSpeed = const []})
      : _time = time,
        _temperature = temperature,
        _weatherCode = weatherCode,
        _relativeHumidity = relativeHumidity,
        _windSpeed = windSpeed;

  factory _$WeatherViewModelStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherViewModelStateImplFromJson(json);

  final List<String> _time;
  @override
  @JsonKey()
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<num> _temperature;
  @override
  @JsonKey()
  List<num> get temperature {
    if (_temperature is EqualUnmodifiableListView) return _temperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature);
  }

  final List<num> _weatherCode;
  @override
  @JsonKey()
  List<num> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<num> _relativeHumidity;
  @override
  @JsonKey()
  List<num> get relativeHumidity {
    if (_relativeHumidity is EqualUnmodifiableListView)
      return _relativeHumidity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativeHumidity);
  }

  final List<num> _windSpeed;
  @override
  @JsonKey()
  List<num> get windSpeed {
    if (_windSpeed is EqualUnmodifiableListView) return _windSpeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed);
  }

  @override
  String toString() {
    return 'WeatherViewModelState(time: $time, temperature: $temperature, weatherCode: $weatherCode, relativeHumidity: $relativeHumidity, windSpeed: $windSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature, _temperature) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._relativeHumidity, _relativeHumidity) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed, _windSpeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_relativeHumidity),
      const DeepCollectionEquality().hash(_windSpeed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherViewModelStateImplCopyWith<_$WeatherViewModelStateImpl>
      get copyWith => __$$WeatherViewModelStateImplCopyWithImpl<
          _$WeatherViewModelStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherViewModelStateImplToJson(
      this,
    );
  }
}

abstract class _WeatherViewModelState implements WeatherViewModelState {
  const factory _WeatherViewModelState(
      {final List<String> time,
      final List<num> temperature,
      final List<num> weatherCode,
      final List<num> relativeHumidity,
      final List<num> windSpeed}) = _$WeatherViewModelStateImpl;

  factory _WeatherViewModelState.fromJson(Map<String, dynamic> json) =
      _$WeatherViewModelStateImpl.fromJson;

  @override
  List<String> get time;
  @override
  List<num> get temperature;
  @override
  List<num> get weatherCode;
  @override
  List<num> get relativeHumidity;
  @override
  List<num> get windSpeed;
  @override
  @JsonKey(ignore: true)
  _$$WeatherViewModelStateImplCopyWith<_$WeatherViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
