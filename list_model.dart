import 'package:flutter_project/model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'list_model.g.dart';
//for getting model.g.dart we have to run the command in terminal
//flutter pub run build_runner build

@JsonSerializable()
class ListModel {
  List<Model> ?data;

  ListModel({this.data});
  factory ListModel.fromJson(Map<String, dynamic> json) =>
      _$ListModelFromJson(json);
  Map<String, dynamic> tojson() => _$ListModelToJson(this);
}