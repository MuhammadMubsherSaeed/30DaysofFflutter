import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.flhe12-1.fna.fbcdn.net/v/t1.6435-9/159384462_2861312977520195_3040674746528511638_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHp-1HAJmUxIoy2bdeyoZ_5cTcqehTm-WtxNyp6FOb5a97HzL9UxiuZFn-KtyfcHgMNcaRaYuktavNV1_GFfja2&_nc_ohc=VgN3MRyh3-YAX9hVJu1&_nc_ht=scontent.flhe12-1.fna&oh=91965a33628227a5d3dde2dba5a2ceb9&oe=6145F0EA";
    return Drawer(
      child: Container(
        color: Colors.green.shade900,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.green.shade900),
                accountName: Text("Muhammad Mubsher Saeed"),
                accountEmail: Text("MITM-S20-011@superior.edu.pk"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: Colors.white,
              ),
              title: Text(
                "Cart",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
