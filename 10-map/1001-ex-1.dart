void main() {
  Map<String, dynamic> value = {
    'name': 'rudra it hub',
    'mobileno': 9892345678,
    'city': 'lila circle bhavnagar',
    'course': ['android', 'Ios', 'java', 'swift'],
  };
  print('$value');
  print(value['mobileno']);
  print(value.length);
  print(value.containsKey('Name '));

  value.forEach((key, value) {
    print('$key==>$value');
  });
  value.remove('Address');
  print(value);

  value.addAll({'Email': 'mailto:rudraithub.bhavangar@gmail.com'});
  print(value);

  print(value.isEmpty);
  value.addAll({'Student Name': "ABC", 'Student Mobile No': 912345678});
  print(value);

  final bool isValuePresent = value['Courses'].contains('Java');

  print(isValuePresent);
}
