import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapptext/demo/test/test_demo.dart';
void main () {

  test('should return hello + something.', () {
    var string = XZYTestDemo.greet('xzy');
    expect(string, 'hello xzy~~~');
  });
}