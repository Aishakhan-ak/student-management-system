class Student {
  // Student properties
  String name;
  String address;
  int age;
  double cgpa;

  // Constructor
  Student(this.name, this.address, this.age, this.cgpa);

  void showStudentsData() {
    print("*************************");
    print("Student Name:$name");
    print("Student Address:$address");
    print("Student Age:$age");
    print("Student Cgpa:$cgpa");
    print("*************************");
  }
}
