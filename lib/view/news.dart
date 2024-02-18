import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<News> {
  final List<Map<String, String>> newsItems = [
    {
      'title':
          'Analyst revamps Amazon stock target after billion-dollar deal unravels',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title':
          'Alphabet Inc Class C (GOOG) is down 1.26% Thursday In Premarket Trading',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title': 'Warren Buffett’s Berkshire Hathaway sells off some Apple stock',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title':
          'Early Adopters of Microsoft’s AI Bot Wonder if It’s Worth the Money',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title':
          'Mark Zuckerberg explains why so many tech companies are doing layoffs right now',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title':
          'Analyst revamps Amazon stock target after billion-dollar deal unravels',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title':
          'Alphabet Inc Class C (GOOG) is down 1.26% Thursday In Premarket Trading',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title': 'Warren Buffett’s Berkshire Hathaway sells off some Apple stock',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title':
          'Early Adopters of Microsoft’s AI Bot Wonder if It’s Worth the Money',
      'subtitle': 'This is a brief summary of the news item...',
    },
    {
      'title':
          'Mark Zuckerberg explains why so many tech companies are doing layoffs right now',
      'subtitle': 'This is a brief summary of the news item...',
    },
    // Add more items here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Stock News",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: newsItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: Image.network(
                          // Replace with your image URL placeholder
                          "https://www.technoloader.com/blog/wp-content/uploads/2019/01/Stock-Market-Website.jpg",
                          width: 60,
                          height: 60,
                        ),
                        title: Text(newsItems[index]['title']!),
                        subtitle: Text(
                          newsItems[index]['subtitle']!,
                          maxLines: 2, // Show max 2 lines
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
