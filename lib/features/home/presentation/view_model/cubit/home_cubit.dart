import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:iss_task/core/base_state/base_state.dart';
import 'package:iss_task/core/constant/response_result.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';
import 'package:iss_task/features/home/domain/usecase/get_data_use_case.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._getDataUseCase) : super(HomeState());
  final GetDataUseCase _getDataUseCase;

  getData() async {
    emit(state.copyWith(getDataState: BaseLoadingState()));
    await Future.delayed(Duration(seconds: 2));
    final result = await _getDataUseCase();
    
    switch (result) {
      case SuccessResult():
        emit(state.copyWith(
            getDataState: BaseSuccessState<ProjectEntity>(result.data)));

      case FailureResult():
        emit(state.copyWith(
            getDataState: BaseFailureState(result.errorMessage)));
    }
  }
}
