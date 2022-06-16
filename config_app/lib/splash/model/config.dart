import 'package:equatable/equatable.dart';

class Config extends Equatable {
  final bool delicous;
  final bool good;
  final bool cheap;
  final bool all;

  const Config(
      {required this.delicous,
      required this.good,
      required this.cheap,
      required this.all});

  @override
  List<Object?> get props => [delicous, good, cheap, all];
}
