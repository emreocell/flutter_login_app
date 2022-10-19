import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Uygulama adi';

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(_title),
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          centerTitle: true,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

@override
class _MyStatefulWidget extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/4/4a/100x100_logo.png'),
                  //logo koyma
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text('Firma adi',
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.w500,
                        fontSize: 30))),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'kullanıcı adı',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'şifre',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Şifreni mi unuttun ?',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Giriş'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    ;
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Hesabın yok mu ?'),
                TextButton(
                  child: const Text(
                    'Kayıt Ol',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
