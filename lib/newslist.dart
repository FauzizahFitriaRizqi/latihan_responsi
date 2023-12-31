import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  @override
  _SpaceflightNewsListState createState() => _SpaceflightNewsListState();
}

class _SpaceflightNewsListState extends State<NewsList> {
  List<Map<String, dynamic>> newsList = [];

  @override
  void initState() {
    super.initState();
    newsList = [
      {
        "id": 21581,
        "title": "McAlister: Space Station Gap Would Be “Not Great, But Not Irrecoverable”",
        "url": "https://spacepolicyonline.com/news/mcalister-space-station-gap-would-be-not-great-but-not-irrecoverable/",
        "image_url": "https://spacepolicyonline.com/wp-content/uploads/2023/04/ISS-great-image-300x176.jpg",
        "news_site": "SpacePolicyOnline.com",
        "summary": "As the International Space Station celebrates its 25th anniversary, the Director of NASA’s Commercial Space Division said today that the agency is working closely with partners to avoid a space…",
        "published_at": "2023-11-21T03:49:15Z",
        "updated_at": "2023-11-21T04:11:02.369000Z",
      },
      {
        "id":21579,
        "title":"Jupiter-3 deploys solar arrays and antennas in orbit",
        "url":"https://spacenews.com/jupiter-3-deploys-solar-arrays-and-antennas-in-orbit/",
        "image_url":"https://spacenews.com/wp-content/uploads/2017/08/vcsPRAsset_3462616_64020_080e5ead-8ff3-4324-9bd9-eb404b9f4149_0-300x224.jpg",
        "news_site":"SpaceNews",
        "summary":"the world’s heaviest commercial communications satellite, is performing as expected after deploying solar arrays and antennas in geostationary orbit.",
        "published_at":"2023-11-21T02:12:24Z",
        "updated_at":"2023-11-21T02:19:15.172000Z","featured":false,"launches":[],"events":[]
      },
      {
        'id':21578,
        "title":"Stars aligning for Boeing crew launch in April",
        "url":"https://www.nasaspaceflight.com/2023/11/starliner-asap-nac/",
        "image_url":"https://www.nasaspaceflight.com/wp-content/uploads/2023/11/CCP-Starliner-image-1170x870.jpg",
        "news_site":"NASASpaceflight","summary":"The long-awaited crewed launch of Starliner has gained increased positivity that its latest launch date will remain on target, following numerous slips since the maiden uncrewed flight to the International Space Station (ISS).",
        "published_at":"2023-11-20T22:25:14Z","updated_at":"2023-11-20T22:59:25.254000Z",
        "featured":false,
        "launches":[{"launch_id":"968067d1-8c12-4018-9854-b7b7d4bddc6b","provider":"Launch Library 2"}],"events":[]
      },
      {
        "id":21577,
        "title":"Battle of the Bands: What’s at stake for space at WRC-23",
        "url":"https://spacenews.com/battle-of-the-bands-whats-at-stake-for-space-at-wrc-23/",
        "image_url":"https://spacenews.com/wp-content/uploads/2023/11/brian4897_A_scientifically_detailed_illustration_featuring_the__5d4d36d0-ea79-409e-89ab-4c64d58b2752-300x300.jpg",
        "news_site":"SpaceNews",
        "summary":"The stage is set for a global showdown four years in the making for access to the radio waves needed for communications in space, on Earth, and everywhere in between.",
        "published_at":"2023-11-20T22:12:08Z",
        "updated_at":"2023-11-20T22:19:15.495000Z",
        "featured":false,"launches":[],"events":[]},
      {
        "id":21576,
        "title":"MDA gets 131 million from mystery NGSO constellation customer",
        "url":"https://spacenews.com/mda-gets-131-million-from-mystery-ngso-constellation-customer/",
        "image_url":"https://spacenews.com/wp-content/uploads/2023/08/UPDATED-Telesat-Lightspeed-Satellite-Rendering-300x210.jpg",
        "news_site":"SpaceNews",
        "summary":"An undisclosed customer is paying MDA 180 million Canadian dollars (131 million) to start engineering a non-geostationary constellation of 36 satellites.",
        "published_at":"2023-11-20T22:05:08Z",
        "updated_at":"2023-11-20T22:09:16.301000Z",
        "featured":false,
        "launches":[],
        "events":[]
      },
      {
        "id":21573,
        "title":"U.S. delegation stokes optimism on wireless and satellite goals at WRC-23",
        "url":"https://spacenews.com/u-s-delegation-stokes-optimism-on-wireless-and-satellite-goals-at-wrc-23/",
        "image_url":"https://spacenews.com/wp-content/uploads/2023/11/F_YlHQ-XwAAqV5_-300x200.jpeg",
        "news_site":"SpaceNews","summary":"Government officials leading the U.S. delegation said their top priorities are to ensure spectrum access for next-generation wireless services and to boost U.S. growth in the space economy.",
        "published_at":"2023-11-20T17:51:19Z",
        "updated_at":"2023-11-20T17:59:15.502000Z",
        "featured":false,
        "launches":[],
        "events":[]
      },
      {
        "id":21571,
        "title":"Sorry, doubters: Starship actually had a remarkably successful flight",
        "url":"https://arstechnica.com/space/2023/11/heres-why-this-weekends-starship-launch-was-actually-a-huge-success/",
        "image_url":"https://cdn.arstechnica.net/wp-content/uploads/2023/11/starship-1.jpg",
        "news_site":"Arstechnica",
        "summary":"On just its second flight, Starship now is arguably as successful as NASA's SLS rocket.",
        "published_at":"2023-11-20T16:16:23Z",
        "updated_at":"2023-11-20T21:23:00.101000Z",
        "featured":false,
        "launches":[{"launch_id":"04b91bb8-38a7-4868-b025-4bbe05d1fbfe", "provider":"Launch Library 2"}],
        "events":[]
      },
      {
        "id":21570,
        "title":"ESA Launch Call to Develop Life Support Systems for Space",
        "url":"https://europeanspaceflight.com/esa-launch-call-to-develop-life-support-systems-for-space/",
        "image_url":"https://europeanspaceflight.com/wp-content/uploads/2023/11/ESA-Launch-Call-to-Develop-Life-Support-Systems-for-Space.jpg",
        "news_site":"European Spaceflight",
        "summary":"The European Space Agency has launched a call for ideas to develop self-sufficient life support systems that address the challenges of extended space missions in low Earth orbit and beyond. Sustaining life in space requires considerable amounts of water, oxygen, and food. The consumption of those resources then generates waste, which is an equally challenging […]\nThe post ESA Launch Call to Develop Life Support Systems for Space appeared first on European Spaceflight.",
        "published_at":"2023-11-20T14:05:33Z",
        "updated_at":"2023-11-20T14:09:44.097000Z",
        "featured":false,"launches":[],"events":[]
      },
      {
        "id":21569,
        "title":"Emirati university signs up to China’s moon base project",
        "url":"https://spacenews.com/emirati-university-signs-up-to-chinas-moon-base-project/",
        "image_url":"https://spacenews.com/wp-content/uploads/2023/10/ILRS-cnsa-roscosmos-2021-2-300x168.jpg",
        "news_site":"SpaceNews",
        "summary":"China has added a United Arab Emirates’ university to its list of partners for the country’s moon base ambitions.",
        "published_at":"2023-11-20T14:04:17Z",
        "updated_at":"2023-11-20T14:09:15.536000Z",
        "featured":false,"launches":[],"events":[]
      },
      {
        "id":21568,
        "title":"Daily Telescope: Spying a double cluster of supergiant stars",
        "url":"https://arstechnica.com/space/2023/11/daily-telescope-spying-a-double-cluster-of-supergiant-stars/",
        "image_url":"https://cdn.arstechnica.net/wp-content/uploads/2023/11/NGC869_DoubleCluster_LRGB.jpg",
        "news_site":"Arstechnica",
        "summary":"\"We had a lovely string of clear nights in late September and early October.\"",
        "published_at":"2023-11-20T13:00:32Z",
        "updated_at":"2023-11-20T13:09:22.848000Z",
        "featured":false,"launches":[],"events":[]
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spaceflight News'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          var newsItem = newsList[index];
          return SpaceflightNewsCard(newsItem: newsItem);
        },
      ),
    );
  }
}

class SpaceflightNewsCard extends StatelessWidget {
  final Map<String, dynamic> newsItem;

  SpaceflightNewsCard({required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            newsItem['image_url'],
            fit: BoxFit.cover,
            height: 200.0,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsItem['title'],
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Published At: ${newsItem['published_at']}',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  newsItem['summary'],
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // Open the news article in a web browser or WebView
              // You can use the url from the newsItem data
            },
            child: Text('Read More'),
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
