import 'package:injectable/injectable.dart';
import 'package:iss_task/core/constant/response_result.dart';
import 'package:iss_task/features/home/data/data_sources/local/home_data_source.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';
import 'package:iss_task/features/home/domain/repository/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _homeDataSource;
  const HomeRepositoryImpl(this._homeDataSource);

  @override
  Future<Result<ProjectEntity>> getProjects() async {
    try {
      final response = await _homeDataSource.getData();
      return SuccessResult(response.toProjectEntity());
    } catch (e) {
      return FailureResult("Faild get Data try again please");
    }
  }
}
