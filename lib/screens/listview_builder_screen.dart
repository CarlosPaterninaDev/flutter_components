import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> ids = [200, 201, 202, 203, 204, 205];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      final pixels = scrollController.position.pixels;
      final maxScroll = scrollController.position.maxScrollExtent;

      if (pixels + 500 >= maxScroll) {
        fetchData();
      }
    });
  }

  void callImage() {
    final lastId = ids.last;
    ids.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    isLoading = false;
    setState(() {});

    final pixels = scrollController.position.pixels + 100;
    final maxScroll = scrollController.position.maxScrollExtent;

    if (pixels + 100 <= maxScroll) return;

    scrollController.animateTo(pixels,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    callImage();
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    final lastId = ids.last;
    ids.clear();
    setState(() {});
    ids.add(lastId + 1);
    callImage();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.amber,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              // backgroundColor: Colors.amber,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics:
                    const BouncingScrollPhysics(), // ! Efecto rebote de IOs
                controller: scrollController,
                itemCount: ids.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/loading.gif');
                    },
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://picsum.photos/id/${ids[index]}/500/300',
                    ),
                    placeholder: const AssetImage('assets/loading.gif'),
                  );
                },
              ),
            ),
            if (isLoading)
              Positioned(
                // ! Todo esto es la misma monda que tirar un Center
                bottom: (size.height / 2) - 10,
                left: (size.width / 2) - 50,
                width: 100,
                child: const _LoadingIcon(),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back)),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      color: Colors.transparent,
      child: const CircularProgressIndicator(
        color: AppTheme.primaryColor,
      ),
    );
  }
}
