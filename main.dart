import 'student.dart';

void main() {
  Student s1 = Student("Aisha", "DIKhan", 22, 3.9);
  Student s2 = Student("Fatima", "Lahore", 27, 3.2);
  Student s3 = Student("Ali", "Islamabad", 24, 3.3);
  Student s4 = Student("Aliya", "Karachi", 20, 3.4);
  Student s5 = Student("Hamna", "Rawalpindi", 30, 3.1);
  Student s6 = Student("Ahmad", "Quetta", 19, 3.7);

  //  Add student
  List<Student> studentsData = [];
  studentsData.add(s1);
  studentsData.add(s2);
  studentsData.add(s3);
  studentsData.add(s4);
  studentsData.add(s5);
  studentsData.add(s6);

  // Read Student Data
  for (Student s in studentsData) {
    s.showStudentsData();
  }

  // Search Student Data
  String city = "Lahore";
  Student search = studentsData.firstWhere((s) {
    return s.address == city;
  });

  search.showStudentsData();

  // Delete Student Data

  // studentsData.remove(search);
  studentsData.removeAt(studentsData.length - 1);
  print("***********After Deleting Data**************");
  for (Student s in studentsData) {
    s.showStudentsData();
  }

  // Sort Student Data

  studentsData.sort((s1, s2) {
    return s2.age.compareTo(s1.age);
  });

  print("***********After sorting Data**************");
  for (Student s in studentsData) {
    s.showStudentsData();
  }

  // Update
  Student updateData = studentsData.firstWhere((s) {
    return s.name == "Fatima";
  });
  updateData.age = 37;
  print("***********After Updating Data**************");
  for (Student s in studentsData) {
    s.showStudentsData();
  }
}
