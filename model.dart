import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';
//for getting model.g.dart we have to run the command in terminal
//flutter pub run build_runner build

@JsonSerializable()
class Model {
  String userName;
  String vehicleNo;
  String vehicle;
  String duePayment;
  String renewalDays;
  Model(this.userName, this.vehicleNo,this.vehicle,this.duePayment,this.renewalDays);
  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
  Map<String, dynamic> tojson() => _$ModelToJson(this);
}