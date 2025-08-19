import 'package:flutter/material.dart';


class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen();

  @override
  Widget build(BuildContext context) {
    final items = const [
      ExpItem('Weather App', 'Real-time weather with REST API'),
      ExpItem('ToDo App', 'Task manager with CRUD features'),
      ExpItem('Chatbot App', 'Conversational UI prototype'),
      ExpItem('Instagram UI Design', 'Responsive social UI'),
      ExpItem('Daraz App UI Design', 'E-commerce app UI design'),
    ];
    Size size = MediaQuery.of(context).size;

    return Container(
       padding:   const EdgeInsets.only(top: 20,
                    left: 100,
                    right: 10),
        height: size.height *0.9,
                  width: size.width,
                  color: Colors.grey[200],
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child:                 Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 240, 240),
                           
                            radius: 30,
                            child: Icon(Icons.work_outline,size: 40,color: Color(0xff0066CC),),
                     
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Experience",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                         
                        ],
                      ),
           
          ),
          const SizedBox(height: 12),
          ...items.map((e) => _TimelineTile(item: e)).toList(),
        ],
      ),
    );
  }
}

class ExpItem {
  final String title;
  final String subtitle;
  const ExpItem(this.title, this.subtitle);
}

class _TimelineTile extends StatelessWidget {
  const _TimelineTile({required this.item});
  final ExpItem item;
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Dot & line
        Column(
          
        
          children: [
            
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Color(0xff0066CC),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 2,
              height: 36,
              margin: const EdgeInsets.symmetric(vertical: 4),
              color: Colors.black,
            ),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title, style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(item.subtitle, style: TextStyle(color: Colors.black,fontSize: 20)),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}