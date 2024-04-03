class Mybank {
  void myname(String name) {
    print(name);
  }

  void myaccno(int accno) {
    print(accno);
  }

  void mylocation(String location) {
    print(location);
  }

  void mycity(String city) {
    print(city);
  }
}

void main() {
  Mybank me = Mybank();
  me.myname("Pratik Mehta");
  me.myaccno(364011223387);
  me.mylocation("Avenue Road");
  me.mycity("baglore");
}
