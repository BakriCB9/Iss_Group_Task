import 'package:iss_task/core/constant/response_result.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';

abstract interface class HomeRepository {
  Future<Result<ProjectEntity>> getProjects();
}