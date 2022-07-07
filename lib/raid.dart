import 'package:flutter/material.dart';



class Raid extends StatefulWidget {
  const Raid({Key? key}) : super(key: key);

  @override
  _RaidState createState() => _RaidState();
}

class _RaidState extends State {
  Object? raidBoss, Rank, RankGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Total Assault")),
      body: Center(
        child: Column(
          children: [

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Insert your name',
              )
            ),
            
            DropdownButton(
              value: raidBoss,
              hint: Text("Select Raid Boss"),
              items: [
                DropdownMenuItem(value: "Binah", child: Text("Binah")),
                DropdownMenuItem(value: "HOD", child: Text("HOD")),
                DropdownMenuItem(value: "ShiroKuro", child: Text("ShiroKuro")),
              ], 
              onChanged: (value) {
                setState(() => raidBoss = value);
              }
            ),
            
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Point',
                hintText: 'Insert how much points you got',
              )
            ),

            Container(

            ),

            Text("Rank"),

            RadioListTile(
              value: "plat", 
              groupValue: RankGroup, 
              onChanged: (val) => setState(() => RankGroup = val),
              title: Text("Platinum"),
            ),

            RadioListTile(
              value: "gold", 
              groupValue: RankGroup, 
              onChanged: (val) => setState(() => RankGroup = val),
              title: Text("Gold and Below"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to Main Page")
            )
          ],
        )
      ), // Elevated Button // Center
    ); // Scaffold
  }
}