void main(List<String> args) {
List<int> list1=[100,200,300,400,500,200];
print(list1);
List<int> list2 = list1.toSet().toList();
print('Tekrarlananlar silinmish list: ${list2}');
list2.sort();
print('Siralanmis list: ${list2}');
}
