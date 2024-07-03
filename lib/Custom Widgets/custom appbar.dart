import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CommonAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CommonAppbar(
      {super.key, required this.tabtext1, required this.tabtext2});
  final String tabtext1;
  final String tabtext2;
  @override
  State<CommonAppbar> createState() => _CommonAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(150);
}

class _CommonAppbarState extends State<CommonAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: AppBar(
        backgroundColor: Colors.blue[100],
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 75, top: 10),
                  child: Text(
                    "Locations",
                    style: GoogleFonts.abyssinicaSil(fontSize: 11,color: Colors.redAccent),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Location Details",
                      style: GoogleFonts.abyssinicaSil(
                          fontSize: 12, fontWeight: FontWeight.bold,color: Colors.redAccent),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_drop_down,
                      ),
                      splashRadius: 05,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(05),
                    ),
                  ),
                  height: 30,
                  width: 30,
                  child: const Icon(
                    Icons.search_rounded,
                    size: 20,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(05),
                  ),
                ),
                height: 30,
                width: 30,
                child: const Icon(
                  Icons.notifications_active_outlined,
                  size: 20,
                )),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(05),
          child: Column(
            children: [
              Divider(
                color: Colors.grey[400],
                height: 1,
                thickness: 1,
              ),
              TabBar(
                tabs: [
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Text(
                            widget.tabtext1,
                            style:
                            GoogleFonts.abyssinicaSil(color: Colors.black),
                          ),
                          const SizedBox(
                            width: 50,
                          ),

                        ],
                      ),
                    ),
                  ),
                  Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              widget.tabtext2,
                              style: GoogleFonts.abyssinicaSil(color: Colors.black),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                          ],
                        ),
                      )),
                ],
                indicatorColor: Colors.red[900],
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ],
          ),
        ),
      ),
    );
  }
}