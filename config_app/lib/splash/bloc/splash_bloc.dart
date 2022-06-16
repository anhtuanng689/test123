import 'package:bloc/bloc.dart';
import 'package:config_app/config_repository.dart';
import 'package:config_app/splash/model/config.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({required this.configRepository}) : super(SplashInitial()) {
    on<SplashStarted>(_onStarted);
  }

  final ConfigRepository configRepository;

  void _onStarted(SplashStarted event, Emitter<SplashState> emit) async {
    try {
      emit(SplashInitial());
      final config = await configRepository.loadConfigs();
      emit(SplashLoaded(config: config));
    } catch (e) {
      emit(SplashError());
    }
  }
}
