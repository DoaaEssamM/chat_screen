import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),),
      title: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage('asset/images/person.jpg'),),
          SizedBox(
            width: 10,
          ),
          Text('Person'),
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam),),
        IconButton(onPressed: (){}, icon: Icon(Icons.call),),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),),
      ],
    ),
    body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/images/background.png'),
               fit: BoxFit.fill,
          )
      ),
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage('asset/images/person1.jpg'),
              radius: 25,),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.white,),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text('This is my first message', style: TextStyle(color: Colors.white),)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.white,),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text('This is my second message', style: TextStyle(color: Colors.white),)),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(backgroundImage: AssetImage('asset/images/person2.jpg'),
                radius: 25,
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                      decoration:BoxDecoration(
                      border: Border.all(color: Colors.white,),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions), color: Colors.white,),
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.attach_file), color: Colors.white,),
                        hintText: 'Type a message',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),

                ),
              ),
              CircleAvatar(
                child: IconButton(onPressed: (){}, icon: Icon(Icons.mic), color: Colors.white,),
                radius: 25,
                backgroundColor: Colors.black,
                ),
            ],
          )
        ],
      ),
    ),
    ),);
  }
}