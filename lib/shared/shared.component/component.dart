//import 'dart:ffi';

//import 'package:bloc/bloc.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/moduels/news_app/webview/webview.dart';
//import 'package:flutter_application_logindesgin/moduels/webview/webview.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/cubit.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget deflutButton({
  double width = double.infinity,
  Color backgroud = Colors.blue,
  @required Function function,
  @required String text,
}) =>
    Container(
      width: width,
      color: backgroud,
      height: 50,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
Widget deflutFormFiled(
        {@required TextEditingController controller,
        @required TextInputType type,
        Function onsubmited,
        @required Function validate,
        @required String label,
        @required IconData prefex,
        IconData sufixs,
        Function sufixspressd,
        bool ispaasword = false,
        bool isClicable = true,
        Function onChanged,
        Function ontap}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onChanged: onChanged,
      obscureText: ispaasword,
      onTap: ontap,
      enabled: isClicable,
      onFieldSubmitted: onsubmited,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefex),
        suffixIcon: sufixs != null
            ? IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: sufixspressd,
              )
            : null,
      ),
    );
Widget buildTsksItem(Map modle, context) => Dismissible(
      key: Key(modle['id'].toString()),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              child: Text("${modle['time']}"),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    " ${modle['title']}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "${modle['date']}",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
                icon: Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
                onPressed: () {
                  AppCubit.get(context).updateData(
                    status: 'done',
                    id: modle['id'],
                  );
                }),
            IconButton(
                icon: Icon(
                  Icons.archive,
                  color: Colors.black45,
                ),
                onPressed: () {
                  AppCubit.get(context)
                      .updateData(status: 'Archived', id: modle['id']);
                }),
          ],
        ),
      ),
      onDismissed: (direction) {
        AppCubit.get(context).deletData(
          id: modle['id'],
        );
      },
    );

Widget taskbulider({
  @required List<Map> tasks,
}) =>
    ConditionalBuilder(
      condition: tasks.length > 0,
      builder: (context) => ListView.separated(
        itemBuilder: (context, index) => buildTsksItem(tasks[index], context),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Container(
            width: 50,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        itemCount: tasks.length,
      ),
      fallback: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.menu,
              size: 100,
              color: Colors.grey,
            ),
            Text(
              'No tasks yet please add some tasks',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
Widget BuildArticalItem(articles, context) => InkWell(
      onTap: () {
        naniagtTo(
          context,
          WebViewScreen(articles['url']),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage('${articles['urlToImage']}'),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 120,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${articles['title']}',
                        style: Theme.of(context).textTheme.bodyText1,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '${articles['publishedAt']}',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
Widget MuDivder() => Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: Container(
        width: 50,
        height: 1,
        color: Colors.grey[300],
      ),
    );
Widget articalBuilder(list, context, {isSearch = false}) => ConditionalBuilder(
      condition: list.length > 0,
      builder: (context) => ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              BuildArticalItem(list[index], context),
          separatorBuilder: (context, index) => MuDivder(),
          itemCount: 10),
      fallback: (context) =>
          isSearch ? Container() : Center(child: CircularProgressIndicator()),
    );
void naniagtTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
void navigateandFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (route) {
        return false;
      },
    );
Widget deflutTextboutton({
  @required Function function,
  @required String text,
}) =>
    TextButton(onPressed: function, child: Text(text.toUpperCase()));
void ShowToast({
  @required String text,
  @required Toaststate state,
}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(state),
        textColor: Colors.green,
        fontSize: 16.0);
// عندما يكون لك اختيارت في أكثر من حاجة
enum Toaststate { SUCCESS, ERROR, WARNING }
Color chooseToastColor(Toaststate state) {
  Color color;
  switch (state) {
    case Toaststate.SUCCESS:
      color = Colors.green;
      break;
    case Toaststate.ERROR:
      color = Colors.red;
      break;
    case Toaststate.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}
