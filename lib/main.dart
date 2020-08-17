import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PersonWidget(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCounte = 85453;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            icon: (_isFavorited
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite,
            color: Colors.red,
          ),
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text('$_favoriteCounte'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCounte -= 1;
      } else {
        _isFavorited = true;
        _favoriteCounte += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Япония,Старшая Некома'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }
}

Widget _buildMainColumn() => ListView(
      children: [
        Center(
          child: _buildTopImage(),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: _builRating(),
                ),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(5),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: _buildAction(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: _buildDesc(),
                ),
              ],
            ),
          ),
        )
      ],
    );

Widget _buildTopImage() => Container(
      child: Card(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        elevation: 5,
//        child: Text('Card'),
        child: Image(
          image: AssetImage('images/test.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );

Widget _builRating() => ListTile(
      title: Text(
        'Куроо Тецио',
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text('Япония, Старшая Некома'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FavoriteWidget(),
        ],
      ),
    );

Widget _buildAction() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton('Блокирующий', Icons.star, Colors.red),
        _buildButton('Рост 188 см', Icons.airplanemode_active, Colors.green),
        _buildButton('Возраст 18', Icons.call_made, Colors.indigo),
      ],
    );

Widget _buildDesc() => Text(
      'Нападающий японской школы Некома. Воюет со всеми на поле играя почти честно'
      ' и хорошо ,не обижая других....',
      softWrap: true,
      style: TextStyle(
        fontSize: 17,
      ),
    );

Widget _buildButton(String label, IconData icon, Color color) => Column(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
