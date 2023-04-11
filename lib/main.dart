import 'package:flutter/material.dart';
import 'package:nomadcoder_2/widgets/planner_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nomadcoder_2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black38,
            title: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(
                'assets/images/title.png',
                width: 50,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.add,
                  size: 30,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'MONDAY 16',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'TODAY',
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.purpleAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '17',
                          style: TextStyle(color: Colors.white70, fontSize: 40),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '18',
                          style: TextStyle(color: Colors.white70, fontSize: 40),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '19',
                          style: TextStyle(color: Colors.white70, fontSize: 40),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '20',
                          style: TextStyle(color: Colors.white70, fontSize: 40),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              PlannerCard(
                fromHour: '11',
                fromMin: '30',
                toHour: '12',
                toMin: '20',
                name1: 'DESIGN',
                name2: 'MEETING',
                with1: 'ALEX',
                with2: 'HELENA',
                with3: 'NANA',
                with4: '',
                cardColor: Colors.yellow.shade300,
                withColor1: Colors.black38,
                withColor2: Colors.black38,
                withColor3: Colors.black38,
                withColor4: Colors.black38,
              ),
              const SizedBox(
                height: 10,
              ),
              PlannerCard(
                fromHour: '12',
                fromMin: '35',
                toHour: '14',
                toMin: '10',
                name1: 'DAILY',
                name2: 'PROJECT',
                with1: 'ME',
                with2: 'RICHARD',
                with3: 'CIRY',
                with4: '+4',
                cardColor: Colors.deepPurple.shade400,
                withColor1: Colors.black,
                withColor2: Colors.black38,
                withColor3: Colors.black38,
                withColor4: Colors.black38,
              ),
              const SizedBox(
                height: 10,
              ),
              PlannerCard(
                fromHour: '15',
                fromMin: '00',
                toHour: '16',
                toMin: '30',
                name1: 'WEEKLY',
                name2: 'PLANNING',
                with1: 'DEN',
                with2: 'NANA',
                with3: 'MARK',
                with4: '',
                cardColor: Colors.limeAccent.shade400,
                withColor1: Colors.black38,
                withColor2: Colors.black38,
                withColor3: Colors.black38,
                withColor4: Colors.black38,
              ),
            ],
          ),
          backgroundColor: Colors.black38),
    );
  }
}
