import 'package:flutter/material.dart';

class HeroAnimationExample extends StatelessWidget {
  const HeroAnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyModel> myData = [
      MyModel(image: 'assets/images/tom.png', name: 'Tom'),
      MyModel(image: 'assets/images/jerry.png', name: 'Jerry'),
      MyModel(image: 'assets/images/dog.png', name: 'Dog'),
      MyModel(image: 'assets/images/cheese.png', name: 'Cheese'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          padding: const EdgeInsets.only(top: 30),
          itemCount: myData.length,
          itemBuilder: (context, index) {
            return _buildListItem(myData[index], context);
          },
        ),
      ),
    );
  }

  ListTile _buildListItem(MyModel myData, BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HeroAnimationDetailsPage(
              data: myData,
            ),
          ),
        );
      },
      leading: Hero(
        tag: myData.name,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
          child: Image.asset(
            myData.image,
            width: 100,
          ),
        ),
      ),
      title: Text(myData.name),
    );
  }
}

class MyModel {
  final String image;
  final String name;
  MyModel({required this.image, required this.name});
}

class HeroAnimationDetailsPage extends StatelessWidget {
  const HeroAnimationDetailsPage({super.key, required this.data});
  final MyModel data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: data.name,
              child: Image.asset(
                data.image,
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(data.name),
          ],
        ),
      ),
    );
  }
}
