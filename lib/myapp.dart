import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int d = -1;
List<bool> Value=[false,false,false,false,false,false,false,false,false,false,false,false,];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      d++;
                      Value[d]=true;
                    });
                  },
                  child: Container(
                      decoration: const BoxDecoration(color: Colors.pink),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Add"),
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Value[d]=false;
                      d--;
                    });
                  },
                  child: Container(
                      decoration: const BoxDecoration(color: Colors.pink),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Remove"),
                      )),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                         child: Image.asset("images/st.png"),
                        decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 3,
                                  blurRadius: 5

                                )
                        ],
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    )),
                Expanded(
                  flex: 5,
                  child: GridView.builder(
                      itemCount: 12,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (BuildContext c, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 3,
                                  blurRadius: 5

                                ),
                               
                              ],
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                        ),
                            child: Value[index]?Image.asset("images/tick.png"):Icon(Icons.kayaking,color: Colors.grey[200],),
                            height: 90,
                            width: 90,
                           
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
