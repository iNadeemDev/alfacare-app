import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  List<String> data = [
    "Cardiologist",
    "Physchologist",
    "ENT Specialist",
    "Dermatologist",
    "Endocrinologist",
    "Skin Surgeon",
    "Eye Spcialist",
    "Neuro Surgeon",
    "Family Physician",
    "Heart Surgeon",
  ];

  List<String> recentSearch = [
    "Cardiologist",
    "Physchologist",
    "ENT Specialist",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {},
      );
    } else if (query == "") {
      return const Text("");
    } else {
      return ListTile(
        title: const Text("No results found"),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentSearch[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {},
          );
        });
  }
}
