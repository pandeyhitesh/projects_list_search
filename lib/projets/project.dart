import 'package:projectslistsearch/projets/project.dart';

class Project{
  String category;
  String title;
  String subtitle;
  String domain;
  String logo;
  String des;
  List<Map> specs;
  String ppt;
  //int id;
  //String name;


  List<String> developers;

  Project({ this.category, this.title, this.developers, this.domain, this.des, this.logo, this.ppt, this.specs, this.subtitle});

  factory Project.fromJson(Map<String, dynamic> json){
    return Project(
      //id: json['id'] as int,
      des: json['des'] as String,
      specs: json['specs'] as List,
      title: json['title'] as String,
      category: json['category'] as String,
      domain: json['domain'] as String,
      developers: json['developers'] as List,
      subtitle: json['subtitle'] as String,
      ppt: json['ppt'] as String,
      logo: json['logo'] as String,
    );
  }
}