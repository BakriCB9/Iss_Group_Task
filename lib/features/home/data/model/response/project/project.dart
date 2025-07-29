import 'package:iss_task/features/home/domain/entity/project_entity.dart';

class ProjectDto {
  List<Item>? listOfProjectDto;

  ProjectDto({this.listOfProjectDto});

  factory ProjectDto.fromJson(Map<String, dynamic> json) => ProjectDto(
        listOfProjectDto: (json['project'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  ProjectEntity toProjectEntity() {
    return ProjectEntity(
        listOfProject: listOfProjectDto!.map((e) => e.toItemEntity()).toList());
  }
}

class Item {
  String? projectName;
  String? image;
  String? startDate;
  String? endDate;
  int? workHours;
  String? description;
  String? companyName;

  Item(
      {this.projectName,
      this.image,
      this.startDate,
      this.endDate,
      this.workHours,
      this.description,
      this.companyName});

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        projectName: json['project_name'] as String?,
        image: json['image'] as String?,
        startDate: json['start_date'] as String?,
        endDate: json['end_date'] as String?,
        workHours: json['work_hours'] as int?,
        description: json['description'] as String?,
        companyName: json['company_name'] as String?,
      );

  ItemEntity toItemEntity() {
    return ItemEntity(
      companyName: companyName!,
      description: description!,
      endDate: endDate!,
      image: image!,
      projectName: projectName!,
      startDate: startDate!,
      workHours: workHours!,
    );
  }
}
