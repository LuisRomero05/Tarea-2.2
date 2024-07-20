import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscar',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<MyHomePage> {
  bool _isSearching = false;
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                onChanged: (query) => setState(() => _searchQuery = query),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Buscar...',
                ),
              )
            : Text('Hola Mundo'),
        actions: [
          IconButton(
            icon: _isSearching ? Icon(Icons.close) : Icon(Icons.search),
            onPressed: () {
              setState(() => _isSearching = !_isSearching);
            },
          ),
        ],
      ),
      body: Center(
        child: _searchQuery.isNotEmpty
            ? Text(_searchQuery)
            : Text('No hay resultados'),
      ),
    );
  }
}
