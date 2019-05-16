import 'package:flutter/material.dart';

import 'state/animalModel.dart';

class CampaignItem extends StatelessWidget{
  const CampaignItem(this._item);
  final AnimalModel _item;
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
            leading: Image(image:NetworkImage(_item.photoUrl)),
            title: Text('${_item.name}'),
            subtitle: Text('an adorable ${_item.kind} ${_item.age} old'),
            onTap: ()=> debugPrint('Click on ${_item.name}'),
          );
  }
}

