import 'package:injectable/injectable.dart';
import 'package:iss_task/core/constant/response_result.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';
import 'package:iss_task/features/home/domain/repository/home_repository.dart';

@injectable
class GetDataUseCase {
  final HomeRepository _homeRepository;
  const GetDataUseCase(this._homeRepository);

  Future<Result<ProjectEntity>> call() => _homeRepository.getProjects();
}
