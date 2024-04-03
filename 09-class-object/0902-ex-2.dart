class Myemployee {
  void myname(String name) {
    print(name);
  }

  void mymobile(int mobile) {
    print(mobile);
  }

  void mysalary(int dob) {
    print(dob);
  }

  void mycity(String city) {
    print(city);
  }
}

void main() {
  Myemployee me = Myemployee();
  me.myname("Pratik Mehta");
  me.mymobile(9988123458);
  me.mysalary(10000);
  me.mycity("bhavnagar");
}
