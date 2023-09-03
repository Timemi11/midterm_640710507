// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '640710507';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Container(
      height: 420,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(
            width: 3,
            color: Colors.black,
          )),
      child: Item(),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[200],
                    foregroundColor: Colors.black,
                    side: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                    fixedSize: Size(98, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[200],
                    foregroundColor: Colors.black,
                    side: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                    fixedSize: Size(98, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Question 1 of 1",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            border: Border.all(
              width: 3,
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Text("1+1 ได้เท่าไหร่",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40,
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ChioceItem("A", "1", false),
              //ตัวแรก หัวข้อคำตอบ, ตัวสอง เนื้อหาคำตอบ, ตัวสาม [false คือ ไม่ใช่คำตอบที่ถูก true คือ คำตอบที่ถูก]
              SizedBox(
                height: 10,
              ),
              ChioceItem("B", "4", false),
              SizedBox(
                height: 10,
              ),
              ChioceItem("C", "3", false),
              SizedBox(
                height: 10,
              ),
              ChioceItem("D", "2", true),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ChioceItem extends StatelessWidget {
  final String prenum;
  final bool stat ;
  final String tex;

  const ChioceItem(this.prenum, this.tex, this.stat, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: (stat) ? Colors.cyanAccent[100] : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: (stat) ? Colors.red[100] : Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Center(
              child: Text(
                prenum,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Center(
            child: Text(
              tex,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Visibility(
            visible: stat,
            child: Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  margin: EdgeInsets.all(8),
                  child: Icon(
                    Icons.check,
                    size: 18,
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
