import 'package:flutter/material.dart';

class MainWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aporo'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'http://media.gettyimages.com/photos/siberian-husky-dog-puppy-picture-id521351257'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.srcATop),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, //With respect to the parent area in this case to the end of the row ( right )
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, // With respect with the other children and the opposity axis
              children: <Widget>[
                Container(
                    child: Icon(
                  Icons.pets,
                  size: 50,
                  color: Colors.orange,
                )),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text("Let's save as many as we can together!",
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                )),
                FlatButton(
                  color: Colors.orange,
                  textColor: Colors.red,
                  child: Text("Log in", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                  onPressed: () => Navigator.pushNamed(context, 'login'),
                )
              ]),
        ),
      ),
        floatingActionButton: FloatingActionButton(
            mini: false,
            child: Icon(Icons.thumb_up),
            backgroundColor: Colors.blue,
            onPressed: ()=> debugPrint('Hola')),
    );
  }
}
