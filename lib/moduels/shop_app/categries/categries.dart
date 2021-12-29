import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/categories_model.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/cubit.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/stats.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, Shopstates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: (context, index) => buildCatItem(
                ShopCubit.get(context).categoriesModel.data.data[index]),
            separatorBuilder: (context, index) => MuDivder(),
            itemCount: ShopCubit.get(context).categoriesModel.data.data.length);
      },
    );
  }

  Widget buildCatItem(DataModel model) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Image(
              image: NetworkImage(model.image),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              model.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      );
}
