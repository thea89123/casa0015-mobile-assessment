// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_plan_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TravelPlanModelAdapter extends TypeAdapter<TravelPlanModel> {
  @override
  final int typeId = 0;

  @override
  TravelPlanModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TravelPlanModel(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TravelPlanModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.originPlace)
      ..writeByte(1)
      ..write(obj.targetPlace)
      ..writeByte(2)
      ..write(obj.startTime)
      ..writeByte(3)
      ..write(obj.endTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TravelPlanModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
