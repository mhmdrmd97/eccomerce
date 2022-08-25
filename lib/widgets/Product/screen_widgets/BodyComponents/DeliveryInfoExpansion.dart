import 'package:flutter/material.dart';


class DeliveryInfoExpansion extends StatelessWidget {
  const DeliveryInfoExpansion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionTile(
        title: Text('Delivery Info',
            style: Theme.of(context).textTheme.headline3),
        children: [
          ListTile(
            title: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                style: Theme.of(context).textTheme.bodyText1),
          ),
        ],
      ),
    );
  }
}

