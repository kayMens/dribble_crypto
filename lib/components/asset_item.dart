import 'package:dribble_crypto/models/asset.dart';
import 'package:flutter/material.dart';

class AssetItem extends StatelessWidget {
  final Asset asset;

  const AssetItem(this.asset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: ShapeDecoration(
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0))),
        child: const Icon(Icons.strikethrough_s),
      ),
      title: Text(
        asset.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
      ),
      subtitle: Text(
        asset.price,
        style: TextStyle(color: Colors.grey[400], fontSize: 17.0),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            asset.value,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            asset.percentage,
            style: TextStyle(fontSize: 17, color: Colors.teal),
          )
        ],
      ),
    );
  }
}
