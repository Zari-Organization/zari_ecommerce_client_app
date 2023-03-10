import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zariecommerce/data/model/response/top_seller_model.dart';

import 'package:zariecommerce/localization/language_constrants.dart';
import 'package:zariecommerce/provider/theme_provider.dart';
import 'package:zariecommerce/utill/color_resources.dart';
import 'package:zariecommerce/utill/custom_themes.dart';
import 'package:zariecommerce/utill/dimensions.dart';
import 'package:zariecommerce/view/screen/home/widget/top_seller_view.dart';
import 'package:provider/provider.dart';

class AllTopSellerScreen extends StatelessWidget {
  final TopSellerModel topSeller;
  AllTopSellerScreen({@required this.topSeller});
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: ColorResources.getIconBg(context),
      appBar: AppBar(
        backgroundColor: Provider.of<ThemeProvider>(context).darkTheme ? Colors.black : Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5))),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: ColorResources.WHITE),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(getTranslated('top_seller', context), style: titilliumRegular.copyWith(fontSize: 20, color: ColorResources.WHITE)),

      ),

      body: Padding(
        padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
        child: TopSellerView(isHomePage: false),
      ),
    );
  }
}
