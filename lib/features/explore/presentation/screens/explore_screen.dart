import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rechat/features/explore/data/model/percakapan.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        title: const Row(
          children: [
            Icon(
              CupertinoIcons.layers,
              size: 32,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "Explore",
              style: TextStyle(
                fontSize: 32,
                color: Colors.lightBlue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.smart_toy_outlined,
                  color: Colors.lightBlue,
                  size: 50,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    "Welcome To Your Personal AI Assistant. How Can I Help You?",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                hintText: "Search Any Topic",
                prefixIcon: const Icon(CupertinoIcons.search),
                suffixIcon: const Icon(CupertinoIcons.clear),
                filled: true,
                fillColor: CupertinoColors.darkBackgroundGray,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: exploreModelList.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(exploreModelList[i].icon),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Text(exploreModelList[i].text),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
