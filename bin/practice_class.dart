import 'dart:io';

void main(){
  print("Задача№1");
  Vehicle bus=Vehicle(maxSpeed: "110 км/ч", mileAge: " 75 тыс. км", seatingCapacity: 20);
  print(bus.maxSpeed);
  print(bus.mileAge);
  print(bus.seatingCapacity);

  Bus bus2=Bus(maxSpeed: "110 км/ч", mileAge: " 75 тыс. км");
  bus2.bus1();
  print(bus2.color);

  Scooter scooter=Scooter(maxSpeed: "ghj", mileAge: "mileAge", seatingCapacity: 50);
  print(scooter.color);

  MiniBus mi=MiniBus(maxSpeed: "maxSpeed", mileAge: "mileAge", seatingCapacity: 20);
  mi.paymentForTravel1();

  print("Задача№2");
  List<String> names2 = [];
  for (int i = 0; i < 3; i++) {
    print("Введите имя $i: ");
    String name = stdin.readLineSync() ?? "";
    names2.add(name);
  }
  Student student1 = Student(names: [names2[0]]);
  Student student2 = Student(names: [names2[1]]);
  Teacher teacher = Teacher(names: [names2[2]]);

  print("Студент 1: ${student1.name1()}");
  student1.study();

  print("Студент 2: ${student2.name1()}");
  student2.study();

  print("Учитель: ${teacher.name1()}");
  teacher.explanation();
}


//Задача№1
class Vehicle{
  String maxSpeed;
  String mileAge;
  int seatingCapacity;
  String color;
  Vehicle({this.seatingCapacity=0,required this.maxSpeed,required this.mileAge,this.color="White"});

}

class Scooter extends Vehicle{
  Scooter({required super.maxSpeed,required super.mileAge,required super.seatingCapacity});
}

class Bus extends Vehicle{
  Bus({required super.maxSpeed,required super.mileAge});
  void bus1(){
    seatingCapacity=50;
    print("$seatingCapacity");
  }
}


class MiniBus extends Vehicle{
  double paymentForTravel;
  
  MiniBus({required super.maxSpeed, required super.mileAge,required super.seatingCapacity,this.paymentForTravel=0});
   void paymentForTravel1(){
     paymentForTravel=((seatingCapacity*100)/10)+(seatingCapacity*100);
     print("$paymentForTravel");
   }
}

//Задача№1
class Person{
  List<String> names = [];
  Person({required this.names});
  String name1() {
    if (names.isNotEmpty) {
      return names[0];
    } else {
      return "Нет имени";
    }
  }
}
  


class Student extends Person{
Student({required super.names});
void study(){

  print("Учится");
  
}
}
class Teacher extends Person{
Teacher({required super.names});
void explanation(){
  
   print("Объясняет");

}
}