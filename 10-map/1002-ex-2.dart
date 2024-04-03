void main() {
  Map<String, dynamic> value = {
    'name': 'Gyanguru vidhyapith',
    'mobileno': 9892345678,
    'address': 'Sagwadi,Bhavnagar',
    'course': ['Commerce', 'Science', 'Arts']
  };
  print('$value');
  print(value['mobileno']);
  print(value.length);
  print(value.containsKey('Name'));

  value.forEach((key, value) {
    print('$key==>$value');
  });
  value.remove('Address');
  print(value);

  value.addAll({'Email': 'mailto:gyanguru@gmail.com'});
  print(value);

  print(value.isEmpty);
  value.addAll({'Student Name': "xyz", 'Student city': 'surat'});
  print(value);

  //final bool isValuePresent = value['Courses'].contains('Java');

  //print(isValuePresent);
}
