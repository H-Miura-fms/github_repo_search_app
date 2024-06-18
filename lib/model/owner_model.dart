// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed

/// GitHub Repository owner data model
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    @JsonKey(name: "login") required String name,
    @JsonKey(name: "avatar_url") required String avatarUrl,
  }) = _OwnerModel;
  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);
}
