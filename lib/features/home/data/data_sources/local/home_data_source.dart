import 'package:iss_task/features/home/data/model/response/project/project.dart';

abstract interface class HomeDataSource 
{
  Future<ProjectDto>getData();
}
