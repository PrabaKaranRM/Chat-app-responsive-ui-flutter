import 'package:flutter/material.dart';
import 'package:od/widgets/contacts_list.dart';
import '../colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: appBarColor,
              elevation: 0,
              title: const Text('Weooo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                  
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                ),
              ],
              bottom: const TabBar(
                  indicatorColor: tabColor,
                  indicatorWeight: 4,
                  labelColor: tabColor,
                  unselectedLabelColor: Colors.white,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Tab(
                      text: 'CHATS',
                    ),
                   
                    Tab(
                      text: 'CALLS',
                    ),
                  ]),
            ),
            
            body: const ContactsList(),
            floatingActionButton: FloatingActionButton(
              onPressed: ( ) {},
              backgroundColor: tabColor,
              child: const Icon(Icons.comment,color: Colors.white, )

            ) ,
            ));
  }
}
