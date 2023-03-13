import 'package:flutter/material.dart';
import 'customelements.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'Search',
              ),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Wrap(
            children: List<Widget>.generate(
              50,
              (index) => SizedBox(
                height: MediaQuery.of(context).size.width / 3,
                width: MediaQuery.of(context).size.width / 3,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: SafeArea(
                            child: PostWidget(
                              useHero: true,
                              photoIndex: index,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Hero(
                      tag: 'assets/img/profile_avatar (${index + 1}).jpg',
                      child: Image.asset(
                        'assets/img/profile_avatar (${index % 10 + 1}).jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
