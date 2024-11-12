import 'package:flutter/material.dart';
import 'package:gori_top/theme/teme_data.dart';

class My2App extends StatelessWidget {
  const My2App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: myTheme,
      home:   const SecondScreen (title: 'Горы'),
      
      
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title});
  final String title;
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
 int _value = 1;
List<String> gor = ['Элбрус', 'Фудзияма', 'Кита', 'Эверест', 'Яри', 'Анино'];
 bool _1sChecked = false;
 bool _2sChecked = false;

  

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
        
           child: Column
           (
             children: <Widget>[
               Container
             (
               width: 250,
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
                       child: const Text('Какой высоты должна быть гора ?',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
             ),
             const SizedBox(height: 20),
          ListTile(
            title: const Text('<2000',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
            leading: Radio(
              value: 1,
              groupValue: _value,
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
              activeColor: Colors.green,
            ),
            tileColor: const Color.fromARGB(255, 91, 90, 90),
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                   side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text('>=2000',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
            leading: Radio(
              value: 2,
              groupValue: _value,
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
              activeColor: Colors.green,
            ),
            
            tileColor: const Color.fromARGB(255, 91, 90, 90),
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
          ),
          
          const SizedBox(height: 20),
           Container
             (
               width: 250,
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
                       child: const Text('Какие маршруты подъема вы любите?',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
             ),
             const SizedBox(height: 20),
             CheckboxListTile(
             title: const Text('Пеший',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
             value: _1sChecked,
              onChanged: (bool? value) {
             setState(() {
              _1sChecked = value!;
            });
          },
           activeColor: Colors.green, // Цвет чекбокса при выборе
                checkColor: Colors.white, // Цвет галочки внутри чекбокса
                tileColor: const Color.fromARGB(255, 91, 90, 90), // Цвет фона ListTile
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
             ),
             const SizedBox(height: 20),
        CheckboxListTile(
             title: const Text('На машине',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
             value: _2sChecked,
              onChanged: (bool? value) {
             setState(() {
              _2sChecked = value!;
            });
          },
          activeColor: Colors.green, // Цвет чекбокса при выборе
                checkColor: Colors.white, // Цвет галочки внутри чекбокса
                tileColor: const Color.fromARGB(255, 91, 90, 90), // Цвет фона ListTile
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
             ),
             const SizedBox(height: 20),
                Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 91, 90, 90), // Цвет фона
                  borderRadius: BorderRadius.circular(10), // Закругленные углы
                  border: Border.all(
                    color: const Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
                child: Text(
                  _getSelectedMountain(),
                  style: const TextStyle(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                
              ),
         ],
        ),
      )
     ),
    );
  }
  String _getSelectedMountain() {
    if (_value == 1) {
      if (_1sChecked && _2sChecked) {
        return 'Вы выбрали гору: ${gor[2]}'; // Кита
      } else if (_1sChecked) {
        return 'Вы выбрали гору: ${gor[0]}'; // Элбрус
      } else if (_2sChecked) {
        return 'Вы выбрали гору: ${gor[1]}'; // Фудзияма
      } else {
        return 'Выберите маршрут подъема';
      }
    } else if (_value == 2) {
      if (_1sChecked && _2sChecked) {
        return 'Вы выбрали гору: ${gor[5]}'; // Анино
      } else if (_1sChecked) {
        return 'Вы выбрали гору: ${gor[3]}'; // Эверест
      } else if (_2sChecked) {
        return 'Вы выбрали гору: ${gor[4]}'; // Яри
      } else {
        return 'Выберите маршрут подъема';
      }
    } else {
      return 'Выберите высоту горы';
    }
 }
}