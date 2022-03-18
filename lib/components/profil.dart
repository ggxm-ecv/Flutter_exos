import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return 
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 32),
              const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 32),
              Container(
                width: 340,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(44),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0,4)
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            )
                          ),
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 4,
                                color: Colors.white
                              ),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: NetworkImage('https://images.pexels.com/photos/5380612/pexels-photo-5380612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                fit: BoxFit.cover
                              ),
                            ),
                            height: 100,
                            width: 100,
                          )
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(132, 106, 0, 0),
                          child: Text(
                            'Gautier Maire',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(132, 122, 0, 0),
                          child: Text(
                            'Paris, France',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            )
                          ),
                        )
                      ],
                    ),
                    Table(
                      columnWidths: const <int, TableColumnWidth>{
                        0: FixedColumnWidth(60),
                        1: FlexColumnWidth()
                      },
                      children: const [
                        TableRow(
                          children: [
                            Icon(Icons.domain),
                            Text(
                              'Studio Zerance',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            )
                          ]
                        ),
                        TableRow(
                          children: [
                            Icon(Icons.work_outline),
                            Text(
                              'Developpeur Front Shopify',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            )
                          ]
                        )
                      ],
                    ),
                  ]
                ),
              )
            ],
          )
      ],
    );
  }
}