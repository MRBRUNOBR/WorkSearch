import 'package:flutter/material.dart';

//Teste

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Seja bem vindo!",
                          style: TextStyle(fontSize: 25, color: Colors.black45),
                        ),
                        Text(
                          "Bruno Mendes",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 35,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 15,
                          right: 20,
                          bottom: 15,
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: CircleAvatar(
                            child: Icon(Icons.search),
                          ),
                        ),
                        hintText: "Pesquisar...",
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width - 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor:
                                  index == 0 ? Colors.white : Colors.blue,
                              child: CircleAvatar(
                                radius: 33,
                                backgroundColor: Colors.white,
                                child: index == 0
                                    ? Icon(Icons.add)
                                    : Text("$index"),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 7.7,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 25,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Jose Eduardo",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "Analista Desenvolvedor",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Icon(Icons.more_vert)
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (param) {
          setState(() {
            index = param;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Inicial")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text("Meus pedidos")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Configurações")),
        ],
      ),
    );
  }
}
