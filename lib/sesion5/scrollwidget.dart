import 'package:flutter/material.dart';

class Scrollwidget extends StatelessWidget {
  //const Scrollwidget({Key? key}) : super(key: key);
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {}
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    //setState(() {});
    await Future.delayed(const Duration(seconds: 3));

    isLoading = false;
    //setState(() {});
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    //setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('hola'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            color: Colors.red,
            onRefresh: onRefresh,
            child: ListView.builder(
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  placeholder: const AssetImage('assets/loading.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/500/300?image=${imagesIds[index]}'),
                );
              },
            ),
          ),
          if (isLoading)
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: LoadingIcono(),
            )
        ],
      ),
    );
  }
}

class LoadingIcono extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: Colors.amber,
      ),
    );
  }
}
