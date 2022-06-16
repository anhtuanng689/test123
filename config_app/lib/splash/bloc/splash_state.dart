part of 'splash_bloc.dart';

@immutable
abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object?> get props => [];
}

class SplashInitial extends SplashState {}

class SplashLoaded extends SplashState {
  const SplashLoaded({required this.config});

  final Config config;

  @override
  List<Object?> get props => [config];
}

class SplashError extends SplashState {}
