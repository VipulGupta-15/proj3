import 'package:flutter/material.dart';
import 'package:proj3/view/chart.dart';

// Import the ChartPage

class StocksPage extends StatefulWidget {
  const StocksPage({super.key});

  @override
  State<StocksPage> createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {
  List<String> stockShares = [
    'AAPL',
    'GOOGL',
    'AMZN',
    'MSFT',
    'FB',
    'TSLA',
    'NFLX',
    'GOOG',
    'NVDA',
    'ADBE',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            color: Colors.white, // Set background color to white
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stocks",
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    "January 5",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          hintText: "Search",
                          prefix: Icon(Icons.search),
                          fillColor: Colors.grey[800],
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: stockShares.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            ListTile(
                              title: Text(
                                stockShares[index],
                                style: TextStyle(
                                    color: Colors
                                        .black), // Set text color to black
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rate',
                                    style: TextStyle(
                                        color: Colors
                                            .black), // Set text color to black
                                  ),
                                  Text(
                                    '+5.2%',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                              onTap: () {
                                // Add your onTap logic here
                                if (index == 0) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Chart(
                                        title: 'app',
                                      ), // Navigate to ChartPage
                                    ),
                                  );
                                } else {
                                  print('You tapped on ${stockShares[index]}');
                                }
                              },
                            ),
                            Divider(
                              color: Colors.grey[800],
                              height: 1,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
