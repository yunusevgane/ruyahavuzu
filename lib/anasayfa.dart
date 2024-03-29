import 'package:flutter/material.dart';
import '/arama.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  _anasayfaState createState() => _anasayfaState();
}

final TextEditingController text = TextEditingController();

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Container(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/home1.png', fit: BoxFit.cover)),
          Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/home2.png', fit: BoxFit.fill)),
          Container(
            alignment: Alignment.center,
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 0.0, top: 50.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff1d71b8),
                          blurRadius: 10,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 5.0, bottom: 5.0),
                    child: TextField(
                      controller: text,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),

                      onSubmitted: (_) {
                        String chattext = text.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => arama(
                              ara: chattext,
                            ),
                          ),
                        );
                      }, // submit and hide keyboard

                      decoration: InputDecoration(
                        hintStyle:
                            const TextStyle(fontSize: 20.0, color: Colors.grey),
                        border: InputBorder.none,
                        suffixIcon: CircleAvatar(
                          backgroundColor: const Color(0xff1d71b8),
                          child: IconButton(
                              icon: const Icon(Icons.search),
                              color: Colors.white,
                              onPressed: () {
                                String chattext = text.text;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => arama(
                                      ara: chattext,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        hintText: 'Rüya Ara',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
