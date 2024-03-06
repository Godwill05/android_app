import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      home: PageHome(),

    );
  }
}
class Person{
  String? name, sexe;
  int? age, size, message;
  Person({
    this.age,
    this.size,
    this.name,
    this.sexe,
    this.message,
});
}

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ChatApp"),),
        backgroundColor: Color(0xFF2ac0ac),
      ),
      body: BodySection(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF2ac0ac),
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.wifi, color: Color(0xFF2ac0ac)), label: "Actualitée", ),
          NavigationDestination(icon: Icon(Icons.message, color: Color(0xFF2ac0ac),), label: "Discussions"),
          NavigationDestination(icon: Icon(Icons.call, color: Color(0xFF2ac0ac),), label: "Appel"),
        ],
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    Person person1 = new Person(name: "Joffrey Barateon",sexe: 'M', age: 15, size: 110, message: 2);
    Person person2 = new Person(name: "Eddard Stark",sexe: 'M', age: 45, size: 120, message: 4);
    Person person3 = new Person(name: "Robb Stark",sexe: 'M', age: 25, size: 130, message: 1);
    Person person4 = new Person(name: "Sansa Stark",sexe: 'F', age: 16, size: 140, message: 16);
    Person person5 = new Person(name: "Robbert Barateon",sexe: 'M', age: 47, size: 150, message: 7);
    Person person6 = new Person(name: "Lord Twin Lannister",sexe: 'M', age: 54, size: 160, message: 10);
    Person person7 = new Person(name: "Myrcella Lannister",sexe: 'F', age: 35, size: 170, message: 11);
    Person person8 = new Person(name: "Jacob Rush",sexe: 'M', age: 26, size: 180,  message: 3);
    Person person9 = new Person(name: "Russel Griifin",sexe: 'M', age: 30, size: 190, message: 8);
    Person person10 = new Person(name: "Spartacus Licorn",sexe: 'M', age: 20, size: 200, message: 5);
    Person person11 = new Person(name: "Leon Dragon",sexe: 'M', age: 41, size: 210, message: 9);
    Person person12 = new Person(name: "Karas Conquestia",sexe: 'F', age: 30, size: 220, message: 3);
    Person person13= new Person(name: "Rengoku Frost",sexe: 'M', age: 21, size: 230, message: 4);
    Person person14= new Person(name: "Yuji Itadori",sexe: 'M', age: 18, size: 240, message: 5);
    Person person15= new Person(name: "Ryomen Sukuna",sexe: 'M', age: 19, size: 250, message: 2);



    var personne = [person1, person2, person3, person4, person5, person6, person7,
      person8,person9,person10,person11,person12,person13,person14,person15,
    ];
    return Container(

      padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 6),
      child: ListView(
        //scrollDirection: Axis.vertical,
        children: [
          /*InkWell(
            onTap: (){},
            splashColor: Color(0xff79b9b1),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("ddd"),
              subtitle: Text("jjddj"),
            ),

          ),
          InkWell(
            onTap: (){},
            splashColor: Color(0xff79b9b1),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("ddd"),
              subtitle: Text("jjj"),
            ),

          ),
          */

          ...personne.map((e) =>
            InkWell(
              onTap: (){print('object');},
              splashColor: Color(0xff79b9b1),
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('images/pilier.jpg'),),

                title: Text(e.name.toString()),
                subtitle: Text("Cc, c'est moi "+ e.name.toString() +" \n\t\rVoici mes info : taille :" + e.size.toString() + "cm"+ " age:"+e.age.toString()),
                trailing: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Color(0xFF2ac0ac),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    e.message.toString(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ).toList(),
        ],
      ),
    );

  }
}




