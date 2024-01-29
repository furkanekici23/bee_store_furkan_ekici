import 'package:flutter/material.dart';

//Fonksiyon tamılamak (main),bir şey döndürmüyorsa başına 'void' yazarsın.
void main() {
//Fonksiyon çağırmak
  print("ilk işlem başarlı olarak çalıştırıldı.");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // altta bir widget oluşturuyoruz.Bütün widgetlar var olurken bu metodu çağırarak var oluyorlar. "Widget build" yani.

  @override
  Widget build(BuildContext context) {
    String name = "Furkan";
    bool isDebug = false;

    return MaterialApp(
      debugShowCheckedModeBanner: isDebug,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Image.asset(
                'varliklar/notification.png',
                width: 24.5,
                height: 24.5,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'varliklar/bag.png',
                width: 24.5,
                height: 24.5,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 24),
            Padding(
              //search kısmı
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search the product you are looking for...",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'varliklar/search-normal.png',
                      width: 15,
                      height: 15,
                      fit: BoxFit.fill,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View All ->',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(children: [
                      Image.asset(
                        'varliklar/Frame_Fashion.png',
                        width: 87,
                        height: 72,
                      ),
                      const Text("Fashion"),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Column(children: [
                      Image.asset(
                        'varliklar/Frame_Electronics.png',
                        width: 90,
                        height: 72,
                      ),
                      const Text("Electronics"),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Column(children: [
                      Image.asset(
                        'varliklar/Frame_Appliances.png',
                        width: 69,
                        height: 72,
                      ),
                      const Text("Appliances"),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Column(children: [
                      Image.asset(
                        'varliklar/Frame_Beauty.png',
                        width: 35,
                        height: 72,
                      ),
                      const Text("Beauty"),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Column(children: [
                      Image.asset(
                        'varliklar/Frame_Furniture.png',
                        width: 90,
                        height: 72,
                      ),
                      const Text("Furniture"),
                    ]),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 233,
                  height: 154,
                  decoration: BoxDecoration(color: Color(0xFFFFE0B7)),
                  child: SizedBox(
                    width: 200,
                    height: 96,
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          'MIN 15% \nOFF',
                          style: TextStyle(
                            color: Color(0xFF3E1304),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.1,
                            letterSpacing: 2.88,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 140,
                          height: 44,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 6),
                          decoration: ShapeDecoration(
                            color: Color(0xFFCC6522),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'SHOP NOW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                  letterSpacing: 1.20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'varliklar/shoes_1.png',
                  width: 178,
                  height: 154,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  padding: const EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF1D4ED8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                Container(
                  width: 6,
                  height: 6,
                  padding: const EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 56, 56, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                Container(
                  width: 6,
                  height: 6,
                  padding: const EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 56, 56, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Hello, $name ,How are you?',
            ),
          ],
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
