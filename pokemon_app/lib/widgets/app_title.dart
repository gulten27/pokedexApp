import 'package:flutter/material.dart';
import 'package:pokemon_app/constants/constants.dart';
import 'package:pokemon_app/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {

  String pokeballImageUrl = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft, 
              child: Text(Constants.title, style:Constants.getTitleTextStyle(),)
              ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              pokeballImageUrl, 
              width: UIHelper.getAppImageWidgetHeight(),
              fit: BoxFit.fitWidth,
              ),
          )
        ],
      ),
    );
  }
}