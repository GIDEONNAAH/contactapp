import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "contact App",
      home: HomePage(),
    );
  }
}

// gggggggggggg
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listofcontacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My contact",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext contaxt, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "serch by name or number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "recent",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                if (index == 4)
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Contacts",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  mycontact: myContacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage("${myContacts[index]["image"]}"),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(myContacts[index]["phone"]),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
    );
  }
}

List listofcontacts = [
  {
    "name": "Gibson",
    "location": "Wa",
    "email": "gideonnaah19@gmail.com",
    "phone": "0551013921",
    "Group": "Nasoba",
    "image": "https://picsum.photos/200/300?random=45"
  },
  {
    "name": "Anderson",
    "location": "Kumasi",
    "email": "anderson20@gmail.com",
    "phone": "0551014921",
    "Group": "Chasu",
    "image": "https://picsum.photos/200/300?random=40"
  },
  {
    "name": "Maxwella",
    "location": "Dokpong",
    "email": "maxwella9@gmail.com",
    "phone": "0551013131",
    "Group": "NBA",
    "image": "https://picsum.photos/200/300?random=33"
  },
  {
    "name": "Sharif",
    "location": "Tamale",
    "email": "sharif@gmail.com",
    "phone": "0541013921",
    "Group": "Teamwin",
    "image": "https://picsum.photos/200/300?random=24"
  },
  {
    "name": "Awudu",
    "location": "Dondoli",
    "email": "awudu19@gmail.com",
    "phone": "0241013921",
    "Group": "Footwear",
    "image": "https://picsum.photos/200/300?random=90"
  },
  {
    "name": "Adamu",
    "location": "Dodowa",
    "email": "adamu20@gmail.com",
    "phone": "0547813921",
    "Group": "SRC",
    "image": "https://picsum.photos/200/300?random=63"
  },
  {
    "name": "Ali",
    "location": "Winneba",
    "email": "ali59@gmail.com",
    "phone": "0501017921",
    "Group": "National mobile app",
    "image": "https://picsum.photos/200/300?random=41"
  },
  {
    "name": "Mahama",
    "location": "Lowcost",
    "email": "mahama30@gmail.com",
    "phone": "0551013921",
    "Group": "MovieXP",
    "image": "https://picsum.photos/200/300?random=72"
  },
  {
    "name": "Samy",
    "location": "Charia",
    "email": "samy30@gmail.com",
    "phone": "0241016921",
    "Group": "Fantacy",
    "image": "https://picsum.photos/200/300?random=66"
  },
  {
    "name": "Max",
    "location": "Konta",
    "email": "max@gmail.com",
    "phone": "0201013721",
    "Group": "No bail",
    "image": "https://picsum.photos/200/300?random=44"
  },
  {
    "name": "Felix",
    "location": "Wappani",
    "email": "Felix19@gmail.com",
    "phone": "0551013432",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=39"
  },
  {
    "name": "Randy",
    "location": "Paga",
    "email": "randy@gmail.com",
    "phone": "0249013921",
    "Group": "Bigguys",
    "image": "https://picsum.photos/200/300?random=22"
  },
  {
    "name": "Ruben",
    "location": "Kantomen",
    "email": "ruben@gmail.com",
    "phone": "0209813921",
    "Group": "DreamsFC",
    "image": "https://picsum.photos/200/300?random=54"
  },
  {
    "name": "Ibrahim",
    "location": "Kambali",
    "email": "ibrahim20@gmail.com",
    "phone": "0541019841",
    "Group": "Man U",
    "image": "https://picsum.photos/200/300?random=48"
  },
];
