import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  static const String id= 'Home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('Whatsapp', style: TextStyle(
              color: Colors.white
            ),


            ),

            bottom: const TabBar(tabs: [
              Icon(Icons.camera_alt_outlined),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),

            ]),

            actions: [

              const Icon(Icons.search),
              const SizedBox( width: 10,),
              PopupMenuButton(
                  icon: const Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context, )=> [
                    const PopupMenuItem(
                        value: 1,
                        child: Text('New Groups')),

                    const PopupMenuItem(
                        value: 2,
                        child: Text('Setting')),

                    const PopupMenuItem(
                        value: 1,
                        child: Text('Log Out')),

                    const PopupMenuItem(
                        value: 1,
                        child: Text('Linked Device')),


                  ]),

              

              const SizedBox( width: 50,),
            ],

            ),
          body: TabBarView(
            children: [
              const Text('Camera'),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://scontent.fkhi6-1.fna.fbcdn.net/v/t39.30808-6/406491836_1148244699486961_5109299013588405121_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeED9SbnVlUOymCaknJUdWf2aYHm5xJvFHBpgebnEm8UcBGIEAtNGNUaCYnZBdlYYSx4DO1wt6H7zOnDFJzwaSug&_nc_ohc=_CnEy1z8pzEAX8AjeBn&_nc_ht=scontent.fkhi6-1.fna&cb_e2o_trans=t&oh=00_AfD6W8BHZyZDlA18QqwCQXsnVoNxYTn3dTtHAQU3mmFv0g&oe=65A6A283'),
                  ),
                  title: Text('Mujahid'),
                  subtitle: Text('Jani Kaha Ho?'),
                  trailing: Text('7:45'),
                );
              }),




              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 4,
                          ),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage('https://scontent.fkhi6-1.fna.fbcdn.net/v/t39.30808-6/406491836_1148244699486961_5109299013588405121_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeED9SbnVlUOymCaknJUdWf2aYHm5xJvFHBpgebnEm8UcBGIEAtNGNUaCYnZBdlYYSx4DO1wt6H7zOnDFJzwaSug&_nc_ohc=_CnEy1z8pzEAX8AjeBn&_nc_ht=scontent.fkhi6-1.fna&cb_e2o_trans=t&oh=00_AfD6W8BHZyZDlA18QqwCQXsnVoNxYTn3dTtHAQU3mmFv0g&oe=65A6A283'),
                        ),
                      ),
                      title: const Text('Mujahid'),
                      subtitle: const Text('30m ago '),

                    );
                  }),




              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://scontent.fkhi6-1.fna.fbcdn.net/v/t39.30808-6/406491836_1148244699486961_5109299013588405121_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeED9SbnVlUOymCaknJUdWf2aYHm5xJvFHBpgebnEm8UcBGIEAtNGNUaCYnZBdlYYSx4DO1wt6H7zOnDFJzwaSug&_nc_ohc=_CnEy1z8pzEAX8AjeBn&_nc_ht=scontent.fkhi6-1.fna&cb_e2o_trans=t&oh=00_AfD6W8BHZyZDlA18QqwCQXsnVoNxYTn3dTtHAQU3mmFv0g&oe=65A6A283'),
                      ),
                      title: const Text('Mujahid'),
                      subtitle: Text(index/2 ==0? 'You missed call' : 'call time is 12:30'),
                      trailing: Icon(index/2 ==0? Icons.call : Icons.video_camera_back),
                    );
                  }),




            ],
          ),

          ),
        );

  }
}
