import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BlogsList extends StatefulWidget {
  @override
  _BlogsListState createState() => _BlogsListState();
}

class _BlogsListState extends State<BlogsList> {
  late List<Map<String, dynamic>> blogList;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final apiUrl =
        'https://api.spaceflightnewsapi.net/v4/blogs/?format=json&limit=10';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      setState(() {
        blogList = data.cast<Map<String, dynamic>>();
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogs List'),
      ),
      body: blogList != null
          ? ListView.builder(
        itemCount: blogList.length,
        itemBuilder: (context, index) {
          var blogItem = blogList[index];
          return BlogListItem(blogItem: blogItem);
        },
      )
          : Center(child: CircularProgressIndicator()),
    );
  }
}

class BlogListItem extends StatelessWidget {
  final Map<String, dynamic> blogItem;

  BlogListItem({required this.blogItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        contentPadding: EdgeInsets.all(8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            blogItem['image_url'],
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(blogItem['title']),
        subtitle: Text(blogItem['summary']),
        onTap: () {
          print('${blogItem['title']} tapped!');
        },
      ),
    );
  }
}
