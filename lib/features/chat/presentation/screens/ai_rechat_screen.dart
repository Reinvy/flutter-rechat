import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AIReChatScreen extends StatelessWidget {
  const AIReChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 4,
                  right: 8,
                  top: 4,
                  bottom: 4,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.back,
                      color: Colors.black,
                      size: 10,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const Text(
              "AI ReChat",
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
                  CupertinoIcons.chat_bubble_2_fill,
                  color: Colors.lightBlue,
                  size: 50,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    "Let's Chat With Your AI Helper & Get Free Assistance.",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: CupertinoColors.white,
                  ),
                ),
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const Card(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Text("Explain Me How AI ReChat Works"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
