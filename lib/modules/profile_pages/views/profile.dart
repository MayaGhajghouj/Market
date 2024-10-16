import 'package:flutter/material.dart';
import 'package:mmarket_interfaces/constants/colors.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: salmon,
            fontWeight: FontWeight.w600,

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
                  Icons.edit,
                  size: 35,

                )),
          ),
        ],
        //backgroundColor: Beige,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pp.png'),
                  radius: 80,
                ),
            ),
            const Text('Madison Smith',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ID : ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                Text('25030024',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Container(
              width: 333,
              height: 81,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: salmon,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image:AssetImage('assets/images/profile.png'),
                ),
                  Image(
                    image:AssetImage('assets/images/line.png'),
                  ),
                  Image(
                    image:AssetImage('assets/images/wishist.png'),
                  ),
                  Image(
                    image:AssetImage('assets/images/line.png'),
                  ),
                  Image(
                    image:AssetImage('assets/images/myOrder.png'),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: salmon,
                  image: DecorationImage(
                      image: AssetImage('assets/images/Privacy Policy.png',
                      ),
                  ),
                ),
              ),
              title: const Text('Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                fontFamily: 'League Spartan',
              ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: salmon,
                  image: DecorationImage(
                    image: AssetImage('assets/images/Payment Methods.png',
                    ),
                  ),
                ),
              ),
              title: const Text('Payment Methods',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'League Spartan',
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: salmon,
                  image: DecorationImage(
                    image: AssetImage('assets/images/notification.png',
                    ),
                  ),
                ),
              ),
              title: const Text('Notification',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'League Spartan',
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: salmon,
                  image: DecorationImage(
                    image: AssetImage('assets/images/setting.png',
                    ),
                  ),
                ),
              ),
              title: const Text('Settings',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'League Spartan',
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: salmon,
                  image: DecorationImage(
                    image: AssetImage('assets/images/help.png',
                    ),
                  ),
                ),
              ),
              title: const Text('Help',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'League Spartan',
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: salmon,
                  image: DecorationImage(
                    image: AssetImage('assets/images/Logout.png',
                    ),
                  ),
                ),
              ),
              title: const Text('Logout',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'League Spartan',
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
