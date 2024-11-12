import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gori_top/routers/routers.dart';
import 'package:gori_top/theme/teme_data.dart';
import 'package:gori_top/vtoroy_screen/veiw/second_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      initialRoute: '/',
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only
            (
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            border: Border.all
            (
              color: const Color.fromRGBO(255, 238, 0,  1.0), // Цвет каймы
              width: 2.0, // Ширина каймы
            ),
          ),
        
        child: AppBar
        (
         title: Text(widget.title),
        ),
        ),
      ),
     
       
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
        child: Column(
         
          children: [
            Row
            ( 
              children: 
              [
                Column(
                  children: [
                    Container(
                       width: 130,
                       height: 58,
                       decoration: BoxDecoration
                       (
                        color:  const Color.fromARGB(255, 91, 90, 90),
                        borderRadius: BorderRadius.circular(10),
                         border: Border.all
                         (
                           color: const Color.fromRGBO(255, 238, 0,  1.0), // Цвет окантовки
                           width: 1.0, // Ширина окантовки
                         ),
                       ),
                      child: const Center( child: Text('  ГОРЫ -',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 20.0)),
                      ),
                    ),
                     const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration
                       (
                         color: const Color.fromARGB(255, 91, 90, 90),
                         borderRadius: BorderRadius.circular(10),
                          border: Border.all
                         (
                           color: const Color.fromRGBO(255, 238, 0,  1.0), // Цвет окантовки
                           width: 1.0, // Ширина окантовки
                         ),
                       ),
                      width: 130,
                      height: 58,
                      child: const Center( child:  Text('СЧАСТЬЕ  ',textAlign: TextAlign.center,style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 20.0)),
                      ),
                    ),
                  ],
                ),
                 const SizedBox(width: 15,),
                
                Container(
                  width: 228,
                  height: 198,
                  decoration: BoxDecoration
                       (
                         
                         borderRadius: BorderRadius.circular(10),
                         image: const DecorationImage
                              (
                                 image: AssetImage('lib/assets/images/gora.jpg'), // Путь к изображению
                                 fit: BoxFit.cover, // Как изображение должно быть вписано в контейнер
                              ),
                        ),
                ),
              ],
            ),
             const SizedBox(height: 20),
            
           Column
           (
            children: [
             Container
             (
               width: 347,
               height: 45,
               decoration: BoxDecoration
                       (
                         color: const Color.fromARGB(255, 91, 90, 90),
                         borderRadius: BorderRadius.circular(10),
                          border: Border.all
                         (
                           color: const Color.fromRGBO(255, 238, 0,  1.0), // Цвет окантовки
                           width: 1.0, // Ширина окантовки
                         ),
                       ),
                       child: const Text('Гора Фудзи Национальном парке Фудзи-Хаконэ-Идзу Высота: 12 388 футов',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
             ),
              const SizedBox(height: 20),
             Container
             (
               width: 347,
               height: 45,
               decoration: BoxDecoration
                       (
                         color: const Color.fromARGB(255, 91, 90, 90),
                         borderRadius: BorderRadius.circular(10),
                          border: Border.all
                         (
                           color: const Color.fromRGBO(255, 238, 0,  1.0), // Цвет окантовки
                           width: 1.0, // Ширина окантовки
                         ),
                       ),
                       child: const Text('Арарат.Самый высокий пик в Турции, высота — 5137 метров',   style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
             )),
              const SizedBox(height: 20),
             Container
             (
               width: 347,
               height: 45,
               decoration: BoxDecoration
                       (
                         color: const Color.fromARGB(255, 91, 90, 90),
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all
                         (
                           color: const Color.fromRGBO(255, 238, 0,  1.0), // Цвет окантовки
                           width: 1.0, // Ширина окантовки
                         ),
                       ),
                       child: const Text('Монблан.Самая высокая вершина Альп, высота — 4810 метров.',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
             ),
            ],
           ),
           const SizedBox(height: 20),
           Container
             (
               width: 150,
               height: 45,
               decoration: BoxDecoration
                       (
                         color: const Color.fromARGB(255, 91, 90, 90),
                         borderRadius: BorderRadius.circular(10),
                          border: Border.all
                         (
                           color: const Color.fromRGBO(255, 238, 0,  1.0), // Цвет окантовки
                           width: 1.0, // Ширина окантовки
                         ),
                       ),
                       child: const Center( child:  Text('Найди свою гору!',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 17.0)),
             )),
            
             const SizedBox(height: 20),
             Container(
                child: GestureDetector( 
                  onTap: () {
                    Navigator.push
                    (
                    context,
                    MaterialPageRoute(builder: (context) => const SecondScreen(title: '',)),
                    );
                  },
                  child: SvgPicture.asset(
                'lib/assets/ico/gora.svg', // Путь к вашему SVG файлу
                 width: 200.0, // Ширина иконки
                 height: 200.0, // Высота иконки
                 ),
                )
             ),
          ],
        ),
        ),
      ),
    );
  }
}
