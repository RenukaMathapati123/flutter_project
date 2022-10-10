// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      json['userName'] as String,
      json['vehicleNo'] as String,
      json['vehicle'] as String,
      json['duePayment'] as String,
      json['renewalDays'] as String,
    );

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'userName': instance.userName,
      'vehicleNo': instance.vehicleNo,
      'vehicle': instance.vehicle,
      'duePayment': instance.duePayment,
      'renewalDays': instance.renewalDays,
    };
