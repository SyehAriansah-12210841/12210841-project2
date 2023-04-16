import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pendataankelas4b/views/berita_panel.dart';
import 'package:provider/provider.dart';
import 'package:pendataankelas4b/providers/dashboard_provider.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(
      builder: (context, provider, child) => Scaffold(
          bottomNavigationBar: const NavigatorBawah(),
          body: provider.indexTombol == 0
              ? DashboardPanel()
              : provider.indexTombol == 1
                  ? BeritaPanel()
                  : SizedBox()),
    );
  }
}

class DashboardPanel extends StatelessWidget {
  const DashboardPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/backgraound1.jpg',
        ),
        const InformasiPengguna(),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Card(
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const LabelBerita(),
                    const ListBerita(),
                    Wrap(
                      children: [
                        TombolMenu(
                          image: 'assets/computer.png',
                        ),
                        TombolMenu(
                          image: 'assets/immigration.png',
                        ),
                        TombolMenu(
                          image: 'assets/map.png',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TombolMenu extends StatelessWidget {
  String image = "";
  TombolMenu({Key? key, this.image = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      margin: const EdgeInsets.all(9),
      child: Image.asset(
        image,
        width: 40,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xdadadaff),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(33, 112, 112, 112),
              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(2, 2),
            )
          ]),
    );
  }
}

class ListBerita extends StatelessWidget {
  const ListBerita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image.asset('assets/gambar berita 1.jpg', height: 120)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image.asset('assets/gambar berita 2.jpg', height: 120)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image.asset('assets/gambar berita 3.jpg', height: 120)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image.asset('assets/gambar berita 4.jpg', height: 120)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image.asset('assets/gambar berita 5.jpg', height: 120)),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelBerita extends StatelessWidget {
  const LabelBerita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: const Text('Berita'),
      ),
    );
  }
}

class NavigatorBawah extends StatelessWidget {
  const NavigatorBawah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final p = context.read<DashboardProvider>();

    return Consumer<DashboardProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return BottomNavigationBar(
          currentIndex: p.indexTombol,
          onTap: (value) {
            p.saatdiklik(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.newspaper), label: 'Berita'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.gear), label: 'Pengaturan')
          ],
        );
      },
    );
  }
}

class InformasiPengguna extends StatelessWidget {
  const InformasiPengguna({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child:
                  Image.asset('assets/logo profil.jpg', width: 60, height: 60)),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Hi, ianz',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'ianzskie.22@gmail.com',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/bell.png',
            width: 40,
          ),
        ],
      ),
    );
  }
}
