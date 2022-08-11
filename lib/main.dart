import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 175, 215, 248)),
      title: 'Market',
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

bool click = false;
bool click2 = false;
bool click3 = false;
int quantity = 0;
int quantity2 = 0;
int quantity3 = 0;
Color t1= Colors.black54;
Color t2 = Colors.black54;
Color t3 = Colors.black54;


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("My Shop"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 12, 53, 87),
        ),
        body: Column(
          children: [
            //first
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(209, 9, 58, 99),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //favorite icon
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  click = !click;
                                  (click == false)
                                      ? t1 = const Color.fromARGB(211, 0, 0, 0)
                                      : t1 = const Color.fromARGB(255, 244, 66, 66);
                                });
                              },
                              color: t1,
                              icon: Icon(
                                (click == false)
                                    ? (Icons.favorite_border_outlined)
                                    : Icons.favorite,
                                size: 30,
                              )),
                        ),

                        //centerd text
                        Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width - 120,
                              child: const Text(
                                "Shoes",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 243, 212),
                                  fontWeight: FontWeight.w100,
                                ),
                                textAlign: TextAlign.center,
                              )),
                        ),

                        //shopping cart icon
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.shopping_cart_checkout_outlined,
                            color: Color.fromARGB(255, 26, 21, 20),
                          ),
                        ),
                      ],
                    ),

                    //image
                    Container(
                      width: 230,
                      margin: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage("assets/shoes.jpg"),
                        ),
                      ),
                    ),

                    //quantity modifier
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (quantity > 0) {
                                    quantity--;
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove_circle_outline,
                                size: 25,
                              ),
                            ),
                            Text(
                              '$quantity',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              icon: const Icon(
                                Icons.add_circle_outline,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),

            //second
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(196, 24, 133, 184),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //favorite icon
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  click2 = !click2;
                                  (click2 == false)
                                      ? t2 = const Color.fromARGB(211, 0, 0, 0)
                                      : t2 = const Color.fromARGB(255, 250, 65, 65);
                                });
                              },
                              color: t2,
                              icon: Icon(
                                (click2 == false)
                                    ? (Icons.favorite_border_outlined)
                                    : Icons.favorite,
                                size: 30,
                              )),
                        ),

                        //centerd text
                        Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width - 120,
                              child: const Text(
                                "T-shirts",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 243, 212),
                                  fontWeight: FontWeight.w100,
                                ),
                                textAlign: TextAlign.center,
                              )),
                        ),

                        //shopping cart icon
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.shopping_cart_checkout_outlined,
                            color: Color.fromARGB(255, 26, 21, 20),
                          ),
                        ),
                      ],
                    ),

                    //image
                    Container(
                      width: 230,
                      margin: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage("assets/tshirts.jpg"),
                        ),
                      ),
                    ),

                    //quantity modifier
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (quantity2 > 0) {
                                    quantity2--;
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove_circle_outline,
                                size: 25,
                              ),
                            ),
                            Text(
                              '$quantity2',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity2++;
                                });
                              },
                              icon: const Icon(
                                Icons.add_circle_outline,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),


            //third
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(195, 21, 121, 146),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //favorite icon
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  click3 = !click3;
                                  (click3 == false)
                                      ? t3 = const Color.fromARGB(211, 0, 0, 0)
                                      : t3= const Color.fromARGB(255, 245, 79, 79);
                                });
                              },
                              color: t3,
                              icon: Icon(
                                (click3 == false)
                                    ? (Icons.favorite_border_outlined)
                                    : Icons.favorite,
                                size: 30,
                              )),
                        ),

                        //centerd text
                        Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width - 120,
                              child: const Text(
                                "Pants",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 243, 212),
                                  fontWeight: FontWeight.w100,
                                ),
                                textAlign: TextAlign.center,
                              )),
                        ),

                        //shopping cart icon
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.shopping_cart_checkout_outlined,
                            color: Color.fromARGB(255, 26, 21, 20),
                          ),
                        ),
                      ],
                    ),

                    //image
                    Container(
                      width: 230,
                      margin: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage("assets/pants.jpg"),
                        ),
                      ),
                    ),

                    //quantity modifier
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           IconButton(
                              onPressed: () {
                                setState(() {
                                  if (quantity3 > 0) {
                                    quantity3--;
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove_circle_outline,
                                size: 25,
                              ),
                            ),
                            Text(
                              '$quantity3',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity3++;
                                });
                              },
                              icon: const Icon(
                                Icons.add_circle_outline,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
          ],
        ));
  }
}
