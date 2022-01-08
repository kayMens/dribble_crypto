import 'package:dribble_crypto/components/asset_item.dart';
import 'package:dribble_crypto/models/asset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashAssets extends StatelessWidget {
  const DashAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0.0),
      child: Column(
        children: const [
          Heading(),
          AssetList(),
        ],
      ),
    );
  }
}

class Heading extends StatefulWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  _HeadingState createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'assets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 17.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "sort by:",
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                width: 70.0,
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 5.0)),
                    items: const [DropdownMenuItem(child: Text('value'))]),
              )
            ],
          )
        ],
      ),
    );
  }
}

class AssetList extends StatefulWidget {
  const AssetList({Key? key}) : super(key: key);

  @override
  _AssetListState createState() => _AssetListState();
}

class _AssetListState extends State<AssetList> {
  late List<Asset> assets;

  @override
  void initState() {
    assets = Asset.getAssets;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: assets.map((e) => AssetItem(e)).toList(),
      shrinkWrap: true,
    );
  }
}
