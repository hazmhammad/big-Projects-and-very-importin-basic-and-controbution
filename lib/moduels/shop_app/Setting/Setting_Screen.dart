import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/cubit.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/stats.dart';
//import 'package:flutter_application_logindesgin/moduels/shop_app/Login/Cubit/states.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, Shopstates>(listener: (context, state) {
      // if (state is ShopSuccessUserDataState) {
      //   print(state.loginmodel.data.name);
      //   print(state.loginmodel.data.email);
      //   print(state.loginmodel.data.phone);
      //   nameController.text = state.loginmodel.data.name;
      //   emailController.text = state.loginmodel.data.email;
      //   phoneController.text = state.loginmodel.data.phone;
      // }
    }, builder: (context, state) {
      var model = ShopCubit.get(context).userModel;
      nameController.text = model.data.name;
      emailController.text = model.data.email;
      phoneController.text = model.data.phone;
      // nameController.text = model.data.name;
      // emailController.text = model.data.email;
      // phoneController.text = model.data.phone;

      return ConditionalBuilder(
        condition: ShopCubit.get(context).userModel != null,
        builder: (context) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              deflutFormFiled(
                  controller: nameController,
                  type: TextInputType.name,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'name must not be empty';
                    }
                    return null;
                  },
                  label: 'Name',
                  prefex: Icons.person),
              SizedBox(
                height: 20,
              ),
              deflutFormFiled(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'email must not be empty';
                    }
                    return null;
                  },
                  label: 'Email',
                  prefex: Icons.email),
              SizedBox(
                height: 20,
              ),
              deflutFormFiled(
                  controller: phoneController,
                  type: TextInputType.phone,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'Phone must not be empty';
                    }
                    return null;
                  },
                  label: 'Phone',
                  prefex: Icons.person),
              SizedBox(
                height: 20,
              ),
              deflutButton(
                  function: () {
                    singout(context);
                  },
                  text: "Logout"),
              SizedBox(
                height: 20,
              ),
              deflutButton(
                  function: () {
                    singout(context);
                  },
                  text: "Updata"),
            ],
          ),
        ),
        fallback: (context) => Center(child: CircularProgressIndicator()),
      );
    });
  }
}
