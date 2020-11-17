import 'package:flutter/material.dart';
import 'package:projectslistsearch/projets/project.dart';
import 'package:projectslistsearch/projets/services.dart';
import 'package:projectslistsearch/data.dart';

class ProjectList extends StatefulWidget {
  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  List<Project> projects = List();
  List<Project> filteredProjects = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Services.getProjects().then((projectsFromServer){
      setState(() {
        projects = projectsFromServer;
        filteredProjects = projectsFromServer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project List'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: 'Enter name or email',
            ),
            onChanged: (string ){
              setState(() {
                filteredProjects = projects.where((element) =>
                    element.title.toLowerCase().contains(string.toLowerCase()) ||
                        element.category.toLowerCase().contains(string.toLowerCase())
                ).toList();
              });

            },
          ),
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: filteredProjects.length,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(filteredProjects[index].title,
                          style: TextStyle(
                            fontSize:16.0,
                            color: Colors.black
                          ),),
                          SizedBox(height: 5.0,),
                          Text(filteredProjects[index].category,
                            style: TextStyle(
                                fontSize:12.0,
                                color: Colors.grey
                            ),),
                          SizedBox(height: 5.0,),
                          Text(filteredProjects[index].des.toString(),
                            style: TextStyle(
                                fontSize:12.0,
                                color: Colors.grey
                            ),),
                          SizedBox(height: 5.0,),
                        ],
                      ),
                    ),
                  );
                },
              )
          ),
        ],
      ),
    );
  }
}
