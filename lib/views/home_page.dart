import 'package:flutter/material.dart';
import '../widgets/news_list_builder.dart';
import '../widgets/category_list.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('News',style: TextStyle(
                color: Colors.black
            ),),
            Text('Cloud',style: TextStyle(
                color: Color(0xffFAB327),
              fontWeight: FontWeight.w500
            ),),
          ],
        ),
      ),
      drawer: Drawer(

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
             SliverToBoxAdapter(
               child:  CategoryList(),
             ),
            const SliverToBoxAdapter(
             child: SizedBox(height: 20,),
            ),
             const NewsListBuilder(category: 'general'),
            // SliverToBoxAdapter(
            //     child: NewsList()
            // )
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoryList(),
        //     const SizedBox(height: 20,),
        //     const Expanded(
        //         child: NewsList())
        //   ],
        // ),
      ),
    );
  }
}


