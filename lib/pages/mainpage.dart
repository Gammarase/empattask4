import 'package:flutter/material.dart';

import 'customelements.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 11,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(1),
              child: CustomAvatar(
                avatarRadius: MediaQuery.of(context).size.height / 11 - 10,
                borderThick: 10,
                photoIndex: index,
                ifSeenBorder: index < 5 && index != 0,
                ifSeenAdd: index == 0,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => PostWidget(
              photoIndex: index,
            ),
          ),
        )
      ],
    );
  }
}
