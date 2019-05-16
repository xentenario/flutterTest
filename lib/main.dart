import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/campaigns/campaignList.dart';
import 'package:flutter_app/widgets/campaigns/state/campaignModel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_app/widgets/campaigns/state/animalModel.dart';

import 'widgets/login/login.dart';
import 'widgets/main/mainWindow.dart';

void main() {
  final appModel = new CampaignModel();
  appModel.add(AnimalModel(1, '1', AnimalKind.dog,
      'http://media.gettyimages.com/photos/siberian-husky-dog-puppy-picture-id521351257'));
  
  runApp(
    ScopedModel<CampaignModel>(
      model: appModel,
      child: MyApp(),
    ),
  );
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        initialRoute: '/',
        routes:{
            '/': (context) => MainWindow(),
            'campaigns':(context) => CampaignList(),
            'login': (context)=> Login()
          },
        );
  }
}
