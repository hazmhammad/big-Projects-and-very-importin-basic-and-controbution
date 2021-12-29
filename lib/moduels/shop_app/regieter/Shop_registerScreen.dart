import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Login/Cubit/cubit.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Login/Cubit/states.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/shop_layout.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/constant.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.lacal/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopRegisterScreen extends StatelessWidget {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    var phonecontroller = TextEditingController();
    var namecontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: BlocProvider(
              create: (context) => ShopLoginCubit(),
              child: BlocConsumer<ShopLoginCubit, ShopLoginStates>(
                listener: (context, state) {
                  // هان عند الاستماع بيسمع ازا التسجبل نجح يطبع كذا (أول ينقل ع صفحة نانية) وازا ما نجح يعمل كذا
                  if (state is ShopLoginSuccessState) {
                    if (state.loginModel.status) {
                      print(state.loginModel.message);
                      print(state.loginModel.data.token);
                      CacheHelper.saveData(
                              key: 'token', value: state.loginModel.data.token)
                          .then((value) {
                        token = state.loginModel.data.token;
                        navigateandFinish(context, Shoplayout());
                      });
                    } else {
                      print(state.loginModel.message);
                      ShowToast(
                        text: state.loginModel.message,
                        state: Toaststate.ERROR,
                      );
                    }
                  }
                },
                builder: (context, state) {
                  return Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Text("Register",
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      color: Colors.black,
                                    )),
                        Text("Register Now To browse our hot offers",
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey,
                                    )),
                        SizedBox(
                          height: 30,
                        ),
                        deflutFormFiled(
                          controller: emailcontroller,
                          type: TextInputType.name,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return "please inter your Name ";
                            }
                          },
                          label: "User Name",
                          prefex: Icons.person,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        deflutFormFiled(
                          controller: emailcontroller,
                          type: TextInputType.emailAddress,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return "please inter your email address";
                            }
                          },
                          label: "Email Address",
                          prefex: Icons.email_outlined,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        deflutFormFiled(
                            controller: passwordcontroller,
                            type: TextInputType.visiblePassword,
                            ispaasword: ShopLoginCubit.get(context).ispassword,
                            sufixs: ShopLoginCubit().suffix,
                            onsubmited: (onsubmited) {
                              if (formkey.currentState.validate()) {
                                ShopLoginCubit.get(context).userlogin(
                                    email: emailcontroller.text,
                                    password: passwordcontroller.text);
                              }
                            },
                            sufixspressd: () {
                              ShopLoginCubit.get(context)
                                  .changePasswordVisbility();
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return "The password is too short";
                              }
                            },
                            label: "password",
                            prefex: Icons.lock_outline),
                        SizedBox(
                          height: 30,
                        ),
                        deflutFormFiled(
                          controller: phonecontroller,
                          type: TextInputType.phone,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return "please inter your phone Number ";
                            }
                          },
                          label: "phone ",
                          prefex: Icons.phone,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ConditionalBuilder(
                          condition: true,
                          builder: (context) => deflutButton(
                            function: () {
                              if (formkey.currentState.validate()) {
                                ShopLoginCubit.get(context).userlogin(
                                    email: emailcontroller.text,
                                    password: passwordcontroller.text);
                              }
                            },
                            text: "Register",
                          ),
                          fallback: (context) =>
                              Center(child: CircularProgressIndicator()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text("Dont have Account? "),
                        //     deflutTextboutton(
                        //         function: () {
                        //           naniagtTo(
                        //             context,
                        //             ShopRegisterScreen(),
                        //           );
                        //         },
                        //         text: 'Register'),
                        //   ],
                        // ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
