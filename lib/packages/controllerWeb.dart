/*

col-xs- => <768px (Container), Column(auto)
col-sm- => >= 768px (Container,750px), Column(~62px)
col-md => >= 992px (Container,970px), Column(~81px)
col-lg => >= 1200px (Container, 1170px), Column(~97px)

*/
import 'package:flutter_web/material.dart';



enum TypeScreen { xs, sm, md, lg }

class ScreenData{
  final double width;
  final int operador;
  final double column;

  ScreenData({this.width, this.operador, this.column});
}

class Screen {
  static Map<TypeScreen, ScreenData> screens() {
    Map<TypeScreen, ScreenData> screens = Map();
    screens.addAll({
      TypeScreen.xs: ScreenData(width:768.0,operador: 0,column: 768.0)
      
    });
    screens.addAll({
      TypeScreen.sm: ScreenData( 
        width: 768.0,
        operador: 1, 
        column: 62.0
      )
      
    });
    screens.addAll({
      TypeScreen.md: 
         ScreenData( 
        width: 992.0,
        operador: 1, 
        column: 81.0
      )
    });
    screens.addAll({
      TypeScreen.lg :
        ScreenData( 
        width: 1200.0,
        operador: 1, 
        column: 97.0)
    
    });
    return screens;
  }
}

class Organization{
   final TypeScreen type;
   final int division;

  Organization({this.type, this.division});
}

class Component {
 final List<Organization> organization;
 final Widget child;
 final double  height;

  Component({this.height, this.organization, this.child});
}

class Controller {
  
  Map<TypeScreen, List<Widget>> widgets;
  final List<Component> componets;
  Controller(this.componets){
    widgets = {
      TypeScreen.lg : [],
      TypeScreen.md : [],
      TypeScreen.sm : [],
      TypeScreen.xs : []
    };
  }

  void createComponents() {
    componets.forEach((item) {


      item.organization.forEach((f){

         switch (f.type) {
        case TypeScreen.xs:
          {
            widgets[f.type].add(
              SizedBox(
                width: Screen.screens()[f.type].column*f.division,
                height: item.height,
                child:item.child,
                ));
            break;
          }

        case TypeScreen.sm:
           {
            widgets[f.type].add(
            SizedBox(
                width: Screen.screens()[f.type].column*f.division,
                child:item.child,
                 height: item.height,
                ));
            break;
          }
        case TypeScreen.md:
           {
            widgets[f.type].add(
              SizedBox(
                width: Screen.screens()[f.type].column*f.division,
                child:item.child,
                 height: item.height,
                ));
            break;
          }
        case TypeScreen.lg:
          {
            widgets[f.type].add(
              Container(
                width: Screen.screens()[f.type].column*f.division,
                child:item.child,
                 height: item.height,
                ));
            break;
          }
      }
        
      });


  
    });
  }
}
