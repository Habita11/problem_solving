void main() {
  List persons = List.generate(10, (index) => index + 1);

  print(getLastSurvival(persons));
}

/// Jousephus problem : https://leetcode.com/problems/find-the-winner-of-the-circular-game/description/
/// so close solution :D
List getLastSurvival(List persons) {
  if (persons.length == 1) return persons;
  if (persons.length % 2 != 0) {
    for (var i = 1; i < persons.length; i++) {
      persons.removeAt(i);
    }
  } else {
    for (var i = 1; i < persons.length; i++) {
      persons.removeAt(i);
    }
    print(persons);
    for (var i = 1; i < persons.length; i++) {
      persons.removeAt(i);
    }
    print(persons);
  }
  persons.insert(0, persons[persons.length - 1]);
  persons.removeAt(persons.length - 1);
  getLastSurvival(persons);
  return persons;
}

///Accurate solution :
int josephus(int n, int k) {
  int i = 1, ans = 0;
  while (i <= n) {
    ans = (ans + k) % i;
    i++;
  }
  return ans + 1;
}
