// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoteEntity {

 int get id; String get title; String get note; List<SubNoteEntity> get subNotes; DateTime? get createdAt;
/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteEntityCopyWith<NoteEntity> get copyWith => _$NoteEntityCopyWithImpl<NoteEntity>(this as NoteEntity, _$identity);

  /// Serializes this NoteEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.subNotes, subNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,note,const DeepCollectionEquality().hash(subNotes),createdAt);

@override
String toString() {
  return 'NoteEntity(id: $id, title: $title, note: $note, subNotes: $subNotes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NoteEntityCopyWith<$Res>  {
  factory $NoteEntityCopyWith(NoteEntity value, $Res Function(NoteEntity) _then) = _$NoteEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, String note, List<SubNoteEntity> subNotes, DateTime? createdAt
});




}
/// @nodoc
class _$NoteEntityCopyWithImpl<$Res>
    implements $NoteEntityCopyWith<$Res> {
  _$NoteEntityCopyWithImpl(this._self, this._then);

  final NoteEntity _self;
  final $Res Function(NoteEntity) _then;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? note = null,Object? subNotes = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,subNotes: null == subNotes ? _self.subNotes : subNotes // ignore: cast_nullable_to_non_nullable
as List<SubNoteEntity>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NoteEntity implements NoteEntity {
   _NoteEntity({required this.id, this.title = "", this.note = "", final  List<SubNoteEntity> subNotes = const [], this.createdAt}): _subNotes = subNotes;
  factory _NoteEntity.fromJson(Map<String, dynamic> json) => _$NoteEntityFromJson(json);

@override final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String note;
 final  List<SubNoteEntity> _subNotes;
@override@JsonKey() List<SubNoteEntity> get subNotes {
  if (_subNotes is EqualUnmodifiableListView) return _subNotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subNotes);
}

@override final  DateTime? createdAt;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteEntityCopyWith<_NoteEntity> get copyWith => __$NoteEntityCopyWithImpl<_NoteEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoteEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._subNotes, _subNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,note,const DeepCollectionEquality().hash(_subNotes),createdAt);

@override
String toString() {
  return 'NoteEntity(id: $id, title: $title, note: $note, subNotes: $subNotes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NoteEntityCopyWith<$Res> implements $NoteEntityCopyWith<$Res> {
  factory _$NoteEntityCopyWith(_NoteEntity value, $Res Function(_NoteEntity) _then) = __$NoteEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String note, List<SubNoteEntity> subNotes, DateTime? createdAt
});




}
/// @nodoc
class __$NoteEntityCopyWithImpl<$Res>
    implements _$NoteEntityCopyWith<$Res> {
  __$NoteEntityCopyWithImpl(this._self, this._then);

  final _NoteEntity _self;
  final $Res Function(_NoteEntity) _then;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? note = null,Object? subNotes = null,Object? createdAt = freezed,}) {
  return _then(_NoteEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,subNotes: null == subNotes ? _self._subNotes : subNotes // ignore: cast_nullable_to_non_nullable
as List<SubNoteEntity>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
