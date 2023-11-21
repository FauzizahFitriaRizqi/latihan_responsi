import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ReportsList extends StatefulWidget {
  @override
  _ReportsListState createState() => _ReportsListState();
}

class _ReportsListState extends State<ReportsList> {
  late Future<List<Map<String, dynamic>>> reportsList;

  @override
  void initState() {
    super.initState();
    reportsList = fetchData();
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    final apiUrl =
        'https://api.spaceflightnewsapi.net/v4/reports/?format=json&limit=10';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports List'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: reportsList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var reportItem = snapshot.data![index];
                return ReportListItem(
                  reportItem: reportItem,
                );
              },
            );
          }
        },
      ),
    );
  }
}

class ReportListItem extends StatelessWidget {
  final Map<String, dynamic> reportItem;

  ReportListItem({
    required this.reportItem,
  });

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
            reportItem['image_url'],
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(reportItem['title']),
        subtitle: Text(reportItem['summary']),
        onTap: () {
          print('${reportItem['title']} tapped!');
        },
      ),
    );
  }
}
