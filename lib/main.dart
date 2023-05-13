import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

String myusername = 'hamjun923';
void fetchcode2() {}

class qtchunk {
  String written = '';
  String bible = '';
  String username = '';
  List<String> likenamelist = [];
  DateTime time = DateTime.now();
  List<String> replynamelist = [];
  List<List<String>> replylist = [];
  List<int> rereplylist = [];
  Container chunk = Container();
  Map<String, dynamic> toJson() {
    return {
      'written': written,
      'bible': bible,
      'username': username,
      'likenamelist': likenamelist,
      'time': time,
      'replylist': replylist
    };
  }

  void chunkupdate() {
    chunk = Container(
      decoration: const BoxDecoration(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const Icon(Icons.circle),
            Text(username,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w700))
          ],
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 0.1), color: Colors.white70),
          child: Text(bible, style: const TextStyle(fontSize: 16)),
        ),
        Container(
          margin: const EdgeInsets.all(3),
          child: Text(
            written,
          ),
        ),
        Text(time.toString()),
        Column(children: [for (String txt in likenamelist) Text(txt)]),
        Row(
          children: [
            IconButton(
                onPressed: () => {
                      /*this.likenamelist.add(myusername)*/ likenamelist
                          .add("a"),
                      print(likenamelist),
                    },
                icon: Icon(likenamelist.isEmpty == true
                    ? Icons.favorite_border
                    : Icons.favorite))
          ],
        ),
      ]),
    );
  }

  qtchunk(
    String written,
    String bible,
    String username,
    List<String> likenamelist,
    DateTime time,
    List<List<String>> replylist,
  ) {
    this.written = written;
    this.bible = bible;
    this.username = username;
    this.likenamelist = likenamelist;
    this.time = time;
    replynamelist = replynamelist;
    this.replylist = replylist;
    rereplylist = rereplylist;
    chunk = Container(
      decoration: const BoxDecoration(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const Icon(Icons.circle),
            Text(username,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w700))
          ],
        ),
        Text(time.toString()),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 0.1), color: Colors.white70),
          child: Text(bible, style: const TextStyle(fontSize: 16)),
        ),
        Container(
          margin: const EdgeInsets.all(3),
          child: Text(
            written,
          ),
        ),
        Text(time.toString()),
        Column(children: [for (String txt in likenamelist) Text(txt)]),
        Row(
          children: [
            IconButton(
                onPressed: () => {
                      /*this.likenamelist.add(myusername)*/ this
                          .likenamelist
                          .add("a"),
                      print(this.likenamelist),
                      yours.add(this)
                    },
                icon: Icon(this.likenamelist.isEmpty == true
                    ? Icons.favorite_border
                    : Icons.favorite))
          ],
        ),
      ]),
    );
  }
  @override
  void qtdisplay() {
    yours.add(this);
  }
}

@override
void accurate(String written, String bible) {
  Container chunk = Container(
    decoration: const BoxDecoration(),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: const [
          Icon(Icons.circle),
          Text(' hamjun923',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700))
        ],
      ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 0.1), color: Colors.white70),
        child: Text(bible, style: const TextStyle(fontSize: 16)),
      ),
      Container(
        margin: const EdgeInsets.all(3),
        child: Text(
          written,
        ),
      ),
      Text(DateTime.now().toString()),
      Row(
        children: const [
          IconButton(onPressed: fetchcode2, icon: Icon(Icons.favorite_border))
        ],
      ),
    ]),
  );
}

List<qtchunk> yours = [];
List<String> bible1 = [
  '창세기',
  '출애굽기',
  '레위기',
  '신명기',
  '민수기',
  '여호수와',
  '사사기',
  '룻기',
  '사무엘상',
  '사무엘하',
  '열왕기상',
  '열왕기하',
  '역대상',
  '역대하',
  '에스라',
  '느헤미야',
  '에스더',
  '욥기',
  '시편',
  '잠언',
  '전도서',
  '아가',
  '이사야',
  '예레미아',
  '예레미아애가',
  '에스겔',
  '다니엘',
  '호세아',
  '요엘',
  '아모스',
  '오바댜',
  '요나',
  '미가',
  '나훔',
  '하박국',
  '스바냐',
  '학개',
  '스가랴',
  '말라기',
];
List<String> bibleinitial = [
  'GEN',
  'EXO',
  'LEV',
  'NUM',
  'DEU',
  'JOS',
  'JUD',
  'RUT',
  '1SA',
  '2SA',
  '1KI',
  '2KI',
  '1CH',
  '2CH',
  'EZR',
  'NEH',
  'EST',
  'JOB',
  'PSA',
  'PRO',
  'ECC',
  'SON',
  'ISA',
  'JER',
  'LAM',
  'EZE',
  'DAN',
  'HOS',
  'JOE',
  'AMO',
  'OBA',
  'JON',
  'MIC',
  'NAH',
  'HAB',
  'ZEP',
  'HAG',
  'ZEC',
  'MAL',
];
List<String> chapternumber = [];
List<String> versenumber = [];
final _controller = TextEditingController();
final _idcontroller = TextEditingController();
final _pswdcontroller = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class SecondRoute extends StatefulWidget {
  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  String verse = "";
  String abc = '';
  Future<String> fetchcode //get http
      (String biblename, String chapter, String verses, String verses2) async {
    print(biblename);
    for (int i = int.parse(verses); i <= int.parse(verses2); i++) {
      String biblesearch = bibleinitial[bible1.indexOf(biblename)];
      String thisverse = i.toString();
      print('$biblesearch.$chapter.$thisverse');
      final url = Uri.parse(
          "https://api.scripture.api.bible/v1/bibles/9879dbb7cfe39e4d-01/verses/$biblesearch.$chapter.$thisverse?content-type=json&include-notes=false&include-titles=false&include-chapter-numbers=false&include-verse-numbers=false&include-verse-spans=false&use-org-id=false");
      var response = await http.get(url, headers: {
        'accept': 'application/json',
        'api-key': '2014f19c2d566218bf9047b62dbfe8e6'
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        print('b');

        abc =
            '${'$abc$thisverse. ' + jsonDecode(response.body)['data']['content'][0]['items']![0]['text']}\n';
      }

      print('c');
      print(abc);
    }
    verse = abc;
    abc = '';
    print('done');
    print(verse);
    setState(() {});
    return abc;
  }

  Future<String> fetchchapter(String bibleinit) async {
    String biblesearch = bibleinitial[bible1.indexOf(bibleinit)];
    final url = Uri.parse(
      "https://api.scripture.api.bible/v1/bibles/bba9f40183526463-01/books/$biblesearch?include-chapters=true",
    );
    var response = await http.get(url, headers: {
      'accept': 'application/json',
      'api-key': '2014f19c2d566218bf9047b62dbfe8e6'
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('b');
      String abc = jsonDecode(response.body)['data']['chapters'].last['number'];
      print('hey');
      print(abc);
      chapternumber = [];
      for (int i = 0; i < int.parse(abc); i++) {
        chapternumber.add((i + 1).toString());
      }

      setState(() {});
      return abc;
    } else {
      return 'abc';
    }
  }

  Future<String> fetchverse(String bibleinit, String biblechapter) async {
    String biblesearch = bibleinitial[bible1.indexOf(bibleinit)];
    final url = Uri.parse(
      "https://api.scripture.api.bible/v1/bibles/bba9f40183526463-01/chapters/$biblesearch.$biblechapter?content-type=json&include-notes=false&include-titles=false&include-chapter-numbers=false&include-verse-numbers=false&include-verse-spans=false",
    );
    var response = await http.get(url, headers: {
      'accept': 'application/json',
      'api-key': '2014f19c2d566218bf9047b62dbfe8e6'
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('b');
      String abc = jsonDecode(response.body)['data']['verseCount'].toString();
      print('hey');
      print(abc);
      versenumber = [];
      for (int i = 0; i < int.parse(abc); i++) {
        versenumber.add((i + 1).toString());
      }

      setState(() {});
      return abc;
    } else {
      return 'abc';
    }
  }

  String? _dropdownValue;
  String? _dropdownValue2;
  String? _dropdownValue3;
  String? _dropdownValue4;
  /*Future<Map<String, dynamic>> postRequest(String nick, String password) async {
    var url = '{{baseURL}}/api/auth/login';
    var body = json.encode({
      'nick': nick,
      'password': password,
    });
    var response = await http.post(
      url,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json-patch+json',
      },
      body: body,
    );

    // todo - handle non-200 status code, etc

    return json.decode(response.body);
  }*/

  @override
  Widget build(BuildContext context) {
    Container chunk = Container();
    print("!!!! SECOND BUILD !!!!");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Route"),
          backgroundColor: Colors.brown,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Center(
            child: Column(children: [
              Row(
                children: [
                  DropdownButton(
                      value: _dropdownValue,
                      items: bible1.map((value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _dropdownValue = newValue;
                          fetchchapter(newValue!);
                        });
                      }),
                  DropdownButton(
                      value: _dropdownValue2,
                      items: chapternumber.map((value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (newValue2) {
                        setState(() {
                          _dropdownValue2 = newValue2;
                          fetchverse(_dropdownValue!, newValue2!);
                        });
                      }),
                  DropdownButton(
                      value: _dropdownValue3,
                      items: versenumber.map((value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (newValue3) {
                        setState(() {
                          _dropdownValue3 = newValue3;
                          print(
                              '$_dropdownValue.$_dropdownValue2.$_dropdownValue3');
                        });
                      }),
                  DropdownButton(
                      value: _dropdownValue4,
                      items: versenumber.map((value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (newValue3) {
                        setState(() {
                          _dropdownValue4 = newValue3;
                          print(
                              '$_dropdownValue.$_dropdownValue2.$_dropdownValue3');
                          fetchcode(_dropdownValue!, _dropdownValue2!,
                              _dropdownValue3!, _dropdownValue4!);
                        });
                      }),
                  const IconButton(
                      onPressed: fetchcode2, icon: Icon(Icons.cached))
                ],
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Text(
                  verse,
                ),
              ]),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0.8),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration.collapsed(
                            hintText: "Send a message"),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0.4),
                        child: IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () => {
                            setState(() {
                              qtchunk qtc = qtchunk(
                                _controller.text,
                                verse,
                                myusername,
                                [],
                                DateTime.now(),
                                [],
                              );
                              qtc.qtdisplay();
                              //accurate(_controller.text, verse);
                            })
                          },
                        )),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {});
                },
                icon: const Icon(Icons.abc),
              ),
            ]),
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      _counter++;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondRoute()));
    });
  }

  @override
  Widget build(BuildContext context) {
    print("!!!! first BUILD !!!!");
    for (qtchunk episode in yours) {
      print(episode.likenamelist);
      episode.chunk = Container(
          decoration: const BoxDecoration(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const Icon(Icons.circle),
                Text(episode.username,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w700))
              ],
            ),
            Text(episode.time.toString()),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.1), color: Colors.white70),
              child: Text(episode.bible, style: const TextStyle(fontSize: 16)),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              child: Text(
                episode.written,
              ),
            ),
            Column(
                children: [for (String txt in episode.likenamelist) Text(txt)]),
            Column(children: [
              for (List reply in episode.replylist)
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      const Icon(Icons.circle),
                      Text(reply[0],
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700))
                    ],
                  ),
                  Text(
                    reply[1],
                  )
                ]),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration.collapsed(
                          hintText: "Send a message"),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 0.4),
                      child: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () => {
                          setState(() {
                            episode.replylist
                                .add([myusername, _controller.text]);

                            //accurate(_controller.text, verse);
                          })
                        },
                      )),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () => {
                            /*this.likenamelist.add(myusername)*/ episode
                                .likenamelist
                                .add(myusername),
                            setState(() {
                              print(episode.likenamelist);
                            })
                          },
                      icon: Icon(episode.likenamelist.isEmpty == true
                          ? Icons.favorite_border
                          : Icons.favorite))
                ],
              ),
            ]),
          ]));
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("title"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
            child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(children: [
                Column(
                  children: [for (qtchunk episode in yours) episode.chunk],
                ),
                Text(
                  yours.isNotEmpty == false
                      ? 'There is no article yet. Share your thought!'
                      : '',
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ])
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondRoute())),
          setState(() {})
        },
        tooltip: 'Increment',
        backgroundColor: Colors.lightGreen,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({super.key, required this.title});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool logincontainer = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Container(height: MediaQuery.of(context).size.height * 0.3),
      Container(
          decoration: BoxDecoration(
              color: logincontainer ? Colors.brown : Colors.white),
          width: MediaQuery.of(context).size.width * 0.3,
          height: 50,
          alignment: Alignment.center,
          child: GestureDetector(
            onLongPressStart: (LongPressStartDetails) {
              logincontainer = false;
              setState(() {});
            },
            onLongPressEnd: (LongPressEndDetails) {
              logincontainer = true;
              setState(() {});
            },
            onTap: () {
              myusername = _idcontroller.toString();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage())); // 클릭 이벤트 처리할 코드 작성
            },
            child: Text(
              "Log In",
              style: TextStyle(
                  color: logincontainer ? Colors.white : Colors.brown,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
          )),
      const SizedBox(height: 40),
      Container(
          width: 600,
          height: 40,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.brown)),
          child: TextField(
            style: const TextStyle(fontSize: 26),
            controller: _idcontroller,
            decoration: const InputDecoration.collapsed(hintText: "ID"),
          )),
      const SizedBox(height: 40),
      Container(
          width: 600,
          height: 40,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.brown)),
          child: TextField(
            style: const TextStyle(fontSize: 26),
            controller: _pswdcontroller,
            decoration: const InputDecoration.collapsed(hintText: "password"),
          )),
    ])));
  }
}
