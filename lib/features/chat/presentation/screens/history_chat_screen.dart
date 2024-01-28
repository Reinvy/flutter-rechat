import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryChatScreen extends StatelessWidget {
  const HistoryChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        title: const Row(
          children: [
            Icon(
              CupertinoIcons.chat_bubble_2,
              size: 32,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Chats",
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
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.delete_solid,
                      color: CupertinoColors.systemRed,
                      size: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Clear All Chats.",
                      style: TextStyle(
                        color: CupertinoColors.systemRed,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Explain Me How AI ReChat Works Explain Me How AI ReChat Works Explain Me How AI ReChat Works Explain Me How AI ReChat Works Explain Me How AI ReChat Works",
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
