import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://imgs.search.brave.com/U9Bjwk_cSVeZ1V_9qqTHnu7gyA9DiHGCYZ38sbbEHxQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuaGVsbG9tYWdh/emluZS5jb20vaG9y/aXpvbi9zcXVhcmUv/ZWI5ZTk4NjMxYjkw/LWdldHR5aW1hZ2Vz/LTIxNTAyNTcxMTMu/anBn"),
          ),
        ),
        title: Text("Mi amor <3"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10.0),
        child: Column(
          children: [
            Expanded(child: 
              ListView.builder( itemCount: 100, itemBuilder: (context, index) {
                
                return MyMessageBubble();

              },)
            ),
            Text("Hola Mundo"),
          ],
        ),
      ),
    );
  }
}