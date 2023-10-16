import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height/2.5,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("MR Mostakim",style: TextStyle(fontWeight: FontWeight.bold),),
              background: Image.network("https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?cs=srgb&dl=pexels-pixabay-206359.jpg&fm=jpg",
              fit: BoxFit.cover,),
            ),
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            titleSpacing: 50,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
              SizedBox(width:15),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              SizedBox(width: 15,),
            ],
            
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: Text("$index"),
                  title: Text("Motiur Rahman Mostakim"),
                  textColor: Colors.pink,trailing: Text("Mostakim"),
                  selectedColor: Colors.black26,
                  subtitle: Text("MR Mostakim"),
                ),
              );
              
            },
            childCount: 51
            ))
        ],
      )),
    );
  }
}