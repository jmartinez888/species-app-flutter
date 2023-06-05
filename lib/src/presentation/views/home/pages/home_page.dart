// Material
import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/widgets/appbar/main_appbar.dart';
// Colors
// Widgets
// Routes

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = [
      Tab(text: 'Tab 1'),
      Tab(text: 'Tab 2'),
      Tab(text: 'Tab 3'),
    ];

    return Scaffold(
      body: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: mainAppBar(
            centerTitle: false,
            title: 'Especies',
            tabBar: tabs.isNotEmpty
                ? TabBar(
                    tabs: tabs,
                  )
                : null,
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide.none),
                  ),
                  child: Text(
                    'Species IIAP',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Especies',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tertiaryColor,
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.home,
                        color: lightTextColor,
                      ),
                      title: const Text(
                        'Item 1',
                        style: TextStyle(
                          color: lightTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tertiaryColor,
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.home,
                        color: lightTextColor,
                      ),
                      title: const Text(
                        'Item 1',
                        style: TextStyle(
                          color: lightTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tertiaryColor,
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.home,
                        color: lightTextColor,
                      ),
                      title: const Text(
                        'Item 1',
                        style: TextStyle(
                          color: lightTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Home page',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  MaterialButton(onPressed: () {}, child: const Text('data')),
                  ElevatedButton(onPressed: () {}, child: const Text('data')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: tertiaryColor),
                      onPressed: () {},
                      child: const Text('data')),
                  const Card(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const Card(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
