import 'package:flutter/material.dart';
import '../colors.dart';
import '../widgets/info.dart';
import '../widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
        child: Column(
          //Chat list
          children: [
             const Expanded(
              child:  ChatList(),
            ),
            TextField(

              
              decoration: InputDecoration(
              
                prefixIcon: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.emoji_emotions, color: Colors.white,
                  ),
                  
                  
                ),
                 fillColor: searchBarColor,
                 filled: true,
                hintText: "Type a message",
                hintStyle: const TextStyle(fontSize: 14, color: Colors.white),
                
                
                
                 suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.camera_alt, color: Colors.white,),
                      Icon(Icons.attach_file, color: Colors.white,),
                      Icon(Icons.money, color: Colors.white,),
                    ],
                  ),
                ),
                
               
                border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
              )
            ),
            contentPadding: const EdgeInsets.all(10),
            
              ),
              

            )
          ],
          //Text input message
        ),
      ),
    );
  }
}
