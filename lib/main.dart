import 'package:flutter/material.dart';
import 'package:youtubeclone/single_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'Youtubeクローン',
          ),
          actions: <Widget>[
            SizedBox(
              width: 45,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  // なにかアクションを書く
                },
              ),
            ),
            SizedBox(
              width: 45,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  // なにかアクションを書く
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image(
                        image: AssetImage('assets/images/weko.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'WEKOのYoutube',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                                ),
                                Text('登録する'),
                              ],
                            ),
                            onPressed: () {
                              // なにかアクションを書く
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        //画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SinglePage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(10),
                      leading: Image(
                        image: AssetImage('assets/images/sample.jpg'),
                      ),
                      title: Column(
                        children: <Widget>[
                          Text(
                            'サンプルサンプルサンプルサンプルサンプル',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '${index}回再生',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '${index}日前',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
