import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/constants/colors.dart';


class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Text(
          'User Reviews',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: salmon,
            fontWeight: FontWeight.bold,

          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: const BoxDecoration(
                  color: salmon,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),),
                ),

                child: const Icon(
                  Icons.search,
                  size: 35,

                )),
          ),
        ],
        backgroundColor: Beige,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Beige,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const ListTile(
                      tileColor: Beige,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Profile_Picture.png'),
                      ),
                      title: Text('Wade'),
                      subtitle: Text('Lorem ipsum dolor sit'
                          ' amet consectetur. Tortor aenean'
                          ' suspendisse pretium nunc non facilisi.',
                      style: TextStyle(
                      fontFamily: 'League Spartan',
                      ),
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,
                      ),
          
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.star,
                            size: 25,
                            color: Terracotta,
                          ),
                        ),
                        const Text('5',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          fontFamily: 'League Spartan',
                        ),
                        ),
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_rounded,
                            size: 23,
                            color: Terracotta,
                          ),
                        ),
                        const Text('654',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'League Spartan',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Beige,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const ListTile(
                      tileColor: Beige,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Profile_Picture.png'),
                      ),
                      title: Text('Wade'),
                      subtitle: Text('Lorem ipsum dolor sit'
                          ' amet consectetur. Tortor aenean'
                          ' suspendisse pretium nunc non facilisi.',
                        style: TextStyle(
                          fontFamily: 'League Spartan',
                        ),
                        maxLines:2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.star,
                            size: 25,
                            color: Terracotta,
                          ),
                        ),
                        const Text('5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            fontFamily: 'League Spartan',
                          ),
                        ),
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_rounded,
                            size: 23,
                            color: Terracotta,
                          ),
                        ),
                        const Text('654',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'League Spartan',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Beige,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const ListTile(
                      tileColor: Beige,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Profile_Picture.png'),
                      ),
                      title: Text('Wade'),
                      subtitle: Text('Lorem ipsum dolor sit'
                          ' amet consectetur. Tortor aenean'
                          ' suspendisse pretium nunc non facilisi.',
                        style: TextStyle(
                          fontFamily: 'League Spartan',
                        ),
                        maxLines:2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.star,
                            size: 25,
                            color: Terracotta,
                          ),
                        ),
                        const Text('5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            fontFamily: 'League Spartan',
                          ),
                        ),
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_rounded,
                            size: 23,
                            color: Terracotta,
                          ),
                        ),
                        const Text('654',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'League Spartan',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Beige,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const ListTile(
                      tileColor: Beige,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Profile_Picture.png'),
                      ),
                      title: Text('Wade'),
                      subtitle: Text('Lorem ipsum dolor sit'
                          ' amet consectetur. Tortor aenean'
                          ' suspendisse pretium nunc non facilisi.',
                        style: TextStyle(
                          fontFamily: 'League Spartan',
                        ),
                        maxLines:2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.star,
                            size: 25,
                            color: Terracotta,
                          ),
                        ),
                        const Text('5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            fontFamily: 'League Spartan',
                          ),
                        ),
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_rounded,
                            size: 23,
                            color: Terracotta,
                          ),
                        ),
                        const Text('654',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'League Spartan',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Beige,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const ListTile(
                      tileColor: Beige,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Profile_Picture.png'),
                      ),
                      title: Text('Wade'),
                      subtitle: Text('Lorem ipsum dolor sit'
                          ' amet consectetur. Tortor aenean'
                          ' suspendisse pretium nunc non facilisi.',
                        style: TextStyle(
                          fontFamily: 'League Spartan',
                        ),
                        maxLines:2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.star,
                            size: 25,
                            color: Terracotta,
                          ),
                        ),
                        const Text('5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            fontFamily: 'League Spartan',
                          ),
                        ),
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_rounded,
                            size: 23,
                            color: Terracotta,
                          ),
                        ),
                        const Text('654',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'League Spartan',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Beige,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const ListTile(
                      tileColor: Beige,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Profile_Picture.png'),
                      ),
                      title: Text('Wade'),
                      subtitle: Text('Lorem ipsum dolor sit'
                          ' amet consectetur. Tortor aenean'
                          ' suspendisse pretium nunc non facilisi.',
                        style: TextStyle(
                          fontFamily: 'League Spartan',
                        ),
                        maxLines:2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.star,
                            size: 25,
                            color: Terracotta,
                          ),
                        ),
                        const Text('5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            fontFamily: 'League Spartan',
                          ),
                        ),
                        IconButton(onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_rounded,
                            size: 23,
                            color: Terracotta,
                          ),
                        ),
                        const Text('654',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'League Spartan',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
