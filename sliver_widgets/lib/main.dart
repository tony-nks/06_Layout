import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.menu),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Page Title'),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    'https://img4.goodfon.ru/original/1600x1200/4/17/through-the-woods-overcast-post-signed-trassa-les-ograzhdeni.jpg',
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.5)

                      ),
                    ),

                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Задание 2 - 1 В SliverAppBar добавьте изображение, которое будет занимать весь размер SliverAppBar. 2. Добавьте полупрозрачный чёрный фон поверх этого изображения. 3. В SliverAppBar добавьте текст поверх изображения и полупрозрачного чёрного фона. При скролле изображение должно заменяться на стандартный синий фон SliverAppBar. При скролле страницы SliverAppBar должен оставаться вверху экрана. Критерии: ● Приложение корректно запускается. ● При скролле страницы изображение постепенно пропадает, заменяется на фон SliverAppBar, при дальнейшем скролле AppBar оказывается наверху экрана.",
              style: TextStyle(fontSize: 28),),
            )

          )
        ],
      )
    );
  }
}
