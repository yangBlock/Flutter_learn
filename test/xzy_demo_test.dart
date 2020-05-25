import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapptext/demo/test/test_demo.dart';
void main () {

  test('should return hello + something.', () {
    var string = XZYTestDemo.greet('xzy');
    expect(string, 'hello xzy~~~');
  });

  //小部件测试
  testWidgets('widget testing demo.', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TestDemo()
      )
    );
  });

//有没有指定的文本小部件，显示的文字是hello
  final labelText = find.text('hello');
//  expect(labelText, findsNothing);
  expect(labelText, findsOneWidget);
//  expect(labelText, findsNWidgets(1));

}