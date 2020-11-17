import 'dart:convert';
import 'package:http/http.dart' as http;
import 'project.dart';
import 'package:projectslistsearch/data.dart';

  //static const String url = 'http://jsonplaceholder.typicode.com/users';

class Services {
  static const String url = 'http://jsonplaceholder.typicode.com/users';

  static Future<List<Project>> getProjects() async{
    try{
      //final response = await http.get(url);
      //if(response.statusCode == 200){
//        List<Project> list = parseProjects(response.body);
//        return list;
//      }else{
//        throw Exception('Error');
//      }
    List<Project> list = items;
    return list;
    }catch(e){
      throw Exception(e.toString());
    }
  }

  static List<Project> parseProjects(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Project>((json) => Project.fromJson(json)).toList();
  }
}