// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_note_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubNoteEntity {

 String get subNote; SubNoteType get type;
/// Create a copy of SubNoteEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubNoteEntityCopyWith<SubNoteEntity> get copyWith => _$SubNoteEntityCopyWithImpl<SubNoteEntity>(this as SubNoteEntity, _$identity);

  /// Serializes this SubNoteEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubNoteEntity&&(identical(other.subNote, subNote) || other.subNote == subNote)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subNote,type);

@override
String toString() {
  return 'SubNoteEntity(subNote: $subNote, type: $type)';
}


}

/// @nodoc
abstract mixin class $SubNoteEntityCopyWith<$Res>  {
  factory $SubNoteEntityCopyWith(SubNoteEntity value, $Res Function(SubNoteEntity) _then) = _$SubNoteEntityCopyWithImpl;
@useResult
$Res call({
 String subNote, SubNoteType type
});




}
/// @nodoc
class _$SubNoteEntityCopyWithImpl<$Res>
    implements $SubNoteEntityCopyWith<$Res> {
  _$SubNoteEntityCopyWithImpl(this._self, this._then);

  final SubNoteEntity _self;
  final $Res Function(SubNoteEntity) _then;

/// Create a copy of SubNoteEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subNote = null,Object? type = null,}) {
  return _then(_self.copyWith(
subNote: null == subNote ? _self.subNote : subNote // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SubNoteType,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubNoteEntity implements SubNoteEntity {
   _SubNoteEntity({this.subNote = "", this.type = SubNoteType.text});
  factory _SubNoteEntity.fromJson(Map<String, dynamic> json) => _$SubNoteEntityFromJson(json);

@override@JsonKey() final  String subNote;
@override@JsonKey() final  SubNoteType type;

/// Create a copy of SubNoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubNoteEntityCopyWith<_SubNoteEntity> get copyWith => __$SubNoteEntityCopyWithImpl<_SubNoteEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubNoteEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubNoteEntity&&(identical(other.subNote, subNote) || other.subNote == subNote)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subNote,type);

@override
String toString() {
  return 'SubNoteEntity(subNote: $subNote, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SubNoteEntityCopyWith<$Res> implements $SubNoteEntityCopyWith<$Res> {
  factory _$SubNoteEntityCopyWith(_SubNoteEntity value, $Res Function(_SubNoteEntity) _then) = __$SubNoteEntityCopyWithImpl;
@override @useResult
$Res call({
 String subNote, SubNoteType type
});




}
/// @nodoc
class __$SubNoteEntityCopyWithImpl<$Res>
    implements _$SubNoteEntityCopyWith<$Res> {
  __$SubNoteEntityCopyWithImpl(this._self, this._then);

  final _SubNoteEntity _self;
  final $Res Function(_SubNoteEntity) _then;

/// Create a copy of SubNoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subNote = null,Object? type = null,}) {
  return _then(_SubNoteEntity(
subNote: null == subNote ? _self.subNote : subNote // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SubNoteType,
  ));
}


}

// dart format on
