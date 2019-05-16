import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'state/campaignModel.dart';

class CampaignList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aporo'),
        ),
        body: SafeArea(child: this.renderList(context)));
  }

  Widget renderList(BuildContext contex) {
    return ScopedModelDescendant<CampaignModel>(
        builder: (BuildContext context, Widget child, CampaignModel model) =>
            ListView(
              children: model.items
                  // For each of them, create a Text widget.
                  .map(
                    (item) => ListTile(
                          leading: Image(
                              image: NetworkImage(
                                  'http://media.gettyimages.com/photos/siberian-husky-dog-puppy-picture-id521351257')),
                          title: Text('${item.name}'),
                          subtitle: Text('${item.age}'),
                          onTap: () => debugPrint('Click on ${item.name}'),
                        ),
                  )
                  .toList(),
            ));
  }
}
