import 'package:bootstrap/packages/controllerWeb.dart';
import 'package:bootstrap/packages/scaffoldWeb.dart';
import 'package:flutter_web/material.dart';

class WebPage extends StatefulWidget {
  WebPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWeb(
      children: [
        Component(
            height: 400.0,
            child: Image.network(
                "http://blog.alphasignage.com.br/wp-content/uploads/2016/03/natureza_1920x1080.jpg"
                
                ,fit: BoxFit.fitWidth,
                ),
            organization: [
              Organization(type: TypeScreen.xs, division: 12),
              Organization(type: TypeScreen.sm, division: 12),
              Organization(type: TypeScreen.md, division: 12),
              Organization(type: TypeScreen.lg, division: 12)
            ]),
        Component(
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                FlatButton(
                  onPressed: (){

                  },
                  child: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                FlatButton(
                  onPressed: (){
                    
                  },
                  child: Text("Blog",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                FlatButton(
                  onPressed: (){
                    
                  },
                   child: Text("Fórum",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
              ],),
            ),
            organization: [
              Organization(type: TypeScreen.sm, division: 6),
              Organization(type: TypeScreen.md, division: 6),
              Organization(type: TypeScreen.lg, division: 6)
            ]),
      ],
    );
  }
}
