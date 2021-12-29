import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/34492145?v=4'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Caht",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    size: 15,
                    color: Colors.white,
                  )),
              onPressed: () {}),
          IconButton(
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    size: 15,
                    color: Colors.white,
                  )),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 3, end: 3)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            Text(
                              "Hazm khllel abdallfatta hammad",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ahmed hammad"),
                            Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "Hello Ahmed hammad",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Text("02:09pm"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/34492145?v=4'),
                        ),
                        Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 3, end: 3)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ahmed hammad"),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Hello Ahmed hammad",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text("02:09pm"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
