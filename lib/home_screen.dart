import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static const String id = "Home_Screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            centerTitle: false,
            bottom: const  TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),

              ],
            ),
            actions: [
             const  Icon(Icons.search),
             const  SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                    PopupMenuItem(
                      value: 1,
                        child: Text('New Group')),
                    PopupMenuItem(
                        value: 2,
                        child: Text('Settings')),
                    PopupMenuItem(
                        value: 3,
                        child: Text('LogOut'))
                  ]),

             const  SizedBox(width: 10,)
            ],

          ),
          body: TabBarView(
            children: [
             const  Text('Camera'),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context, index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: (
                    NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
                    ),
                  ),
                  title: Text('Syed Arsalan'),
                  subtitle: Text("Hey, How Are you"),
                  trailing: Text("12:00 pm"),
                );
              }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){

                       return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("New Updates"),
                            ListTile(
                              leading:  Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3,
                                        color: Colors.green
                                    )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: (
                                      NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
                                  ),
                                ),
                              ),
                              title: Text('Syed Arsalan'),
                              subtitle: Text("30m ago"),
                            ),
                          ],
                        ),
                      );

                  }
                  ),
              ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
                return ListTile(
                  leading: const  CircleAvatar(
                    backgroundImage: (
                        NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
                    ),
                  ),
                  title: Text('Syed Arsalan'),
                  subtitle: Text(index / 2 == 0 ? 'Missed' : 'Outgoing'),
                  trailing: Icon(index/2 == 0 ? Icons.phone : Icons.video_call),
                );
              }),
            ],
          ),
        )
    );
  }
}
