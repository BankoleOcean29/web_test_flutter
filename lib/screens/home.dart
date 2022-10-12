import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  ImageProvider blu = const AssetImage('assets/images/blu.jpg');
  ImageProvider babarinde = const AssetImage('assets/images/babarinde.jpeg');

  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    var screenSizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xffE0E0E0),
        body: ListView(
          children: [
            UnconstrainedBox(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Container(
                  color: Colors.white,
                  width: screenSizeWidth - 100,
                  height: 5000,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: double.infinity,
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  'Vexhibition',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 600,
                              ),
                              Expanded(
                                child: Text(
                                  'Home',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Portfolio',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Gallery',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'About us',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Contact us',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'A Picture Is A Poem \nWithout Words ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 70)),
                                    TextSpan(
                                        text: '- Horace',
                                        style: TextStyle(
                                            letterSpacing: 2,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15)),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Container(
                          height: 500,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 200,
                                  ),
                                  const SizedBox(
                                      child: Text(
                                    'Manamia Art fest',
                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                  )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 400,
                                    child: Text(
                                      'A very beautiful view. The very sweetn'
                                      'ess of the logos that lives in us. We are'
                                          ' strong, bold and beautiful.',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 120,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20, top: 20),
                                          child: Container(
                                            width: 230,
                                            height: 70,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 40,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 240,
                                            height: 80,
                                            color: Colors.black,
                                            child: const Text(
                                              'BUY TICKET',
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 200,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 500,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: blu,
                                          fit: BoxFit.fill,
                                      colorFilter: const ColorFilter.matrix(<double>[
                                        0.2126,0.7152,0.0722,0,0,
                                        0.2126,0.7152,0.0722,0,0,
                                        0.2126,0.7152,0.0722,0,0,
                                        0,0,0,1,0,
                                      ]))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Container(
                        width: screenSizeWidth,
                        child: Stack(
                          children: [
                            Positioned(child: Image(
                              image: babarinde,
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
