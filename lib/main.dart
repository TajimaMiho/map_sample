import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fruits = <int, String>{
      1: 'Apple',
      2: 'Banana',
      3: 'Cherry',
    };
    final gasGiants = <int, String>{4: 'Plum', 5: 'Grapes'};
    final iceGiants = <int, String>{6: 'Orange', 7: 'Peach'};
    print("✅ 変更前: $fruits");
    fruits.addEntries(gasGiants.entries);
    print("✅ 追加（１回目）: $fruits");
    fruits.addEntries(iceGiants.entries);
    print("✅ 追加（２回目）: $fruits");

    final fruits_2 = {
      1: 'Apple',
      2: 'Banana',
      3: 'Cherry',
    };
    print("✅ 変更前: $fruits_2");
    fruits_2.addEntries([
      MapEntry(4, 'Plum'),
      MapEntry(3, 'Grapes'),
    ]);
    print("✅ 更新, 追加後: $fruits_2");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Planets'),
        ),
        body: ListView(
          children: fruits.entries.map((entry) {
            return ListTile(
              title: Text('${entry.key}: ${entry.value}'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
