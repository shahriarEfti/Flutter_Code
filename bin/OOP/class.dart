void main(){

  List<Student> studentList =[];
  
  Student studentOne = Student();
  studentOne.name='Efti';
  studentOne.address='Natore';
  studentOne.age=24;
 //Student.institution='Baust';
  studentList.add(studentOne);
  Student.doAnythinh();


  Student studentTwo = Student();
  studentTwo.name ='Nurullah';
  studentTwo.address='Rajshahi';
  studentTwo.age=24;
  //Student.institution ='Buet';
  studentList.add(studentTwo);
  studentTwo.printsomethimg();


  studentOne.Playing();
  studentTwo.Playing();

  print(studentList);


  Teacher biologyTeacher =Teacher(name: 'Hassan', department: "CSE", age: '29');
 print(biologyTeacher.name);

 print(Student.institution);
 //print(Student.institution);
  Student.institution;


}

//custom data type(user define data type
// Class er name always Pascal Case e likhte hoy
class Student{
  //properties/Attributes
  String name='';
  String address='';
  int age=0;

static String institution = "Dhaka University";


//constructor
  Student(){
print('new object print');
  }


  void Playing (){
    print("$name Playing student");
  }
  void printsomethimg(){
    print('Something');
  }

  static void doAnythinh(){
    print(institution);

    print('Do anything');
  }

}



class Teacher {

 late String name='';
 late String  department ='';
 late String age='';

// Teacher(String n, String a, String b ){

   // name=n;
   // department=a;
   // age=b;
 // }
 Teacher({required  this.name,required  this.department, required  this.age});
}