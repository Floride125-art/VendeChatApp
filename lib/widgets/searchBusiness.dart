import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchPage2 extends StatefulWidget {
  @override
  _SearchPage2State createState() => _SearchPage2State();
}

class _SearchPage2State extends State<SearchPage2> {
  final List<String> list = List.generate(10, (index) => "Text $index");
  bool isDarkMode = true;
  @override
  void initState() {
    super.initState();
    getTheme();
  }

  getTheme() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      isDarkMode = _prefs.getString("theme") == "dark";
      _prefs.setString("Page", "Message");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: searchBarUI(),
    );
  }

  Widget searchBarUI() {
    return FloatingSearchBar(
      hint: 'Search.....',
      hintStyle: TextStyle(),
      openAxisAlignment: 0.0,
      axisAlignment: 0.0,
      scrollPadding: EdgeInsets.only(top: 16, bottom: 20),
      elevation: 4.0,
      physics: BouncingScrollPhysics(),
      onQueryChanged: (query) {
        //Your methods will be here
      },
      transitionCurve: Curves.easeInOut,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(milliseconds: 500),
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Material(
            color: Colors.white,
            child: Container(
              height: 200.0,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Top search', style: TextStyle()),
                    subtitle: Text(
                      'your top search........',
                      style: TextStyle(),
                    ),
                    leading: Icon(Icons.access_time, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
