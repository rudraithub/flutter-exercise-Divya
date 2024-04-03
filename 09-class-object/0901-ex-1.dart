class MyDetails {
  void myname(String name) {
    print(name);
  }

  void mydob(String dob) {
    print(dob);
  }

  void mymobile(int mobile) {
    print(mobile);
  }

  void mycity(String city) {
    print(city);
  }
}

void main() {
  MyDetails me = MyDetails();
  me.myname("mahi patel");
  me.mydob("01-01-1111");
  me.mymobile(9999999999);
  me.mycity("bhavnagar");
}
