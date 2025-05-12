看一个例子

```dart
// class
class ObjectClass {
  void call({int value = 0}) {}
}

// object
final ObjectClass obj;

// object call method
obj(value: 1);

```

obj 是一个 ObjectClass 类型的对象，它是一个[可调用对象](https://dart.dev/language/callable-objects)。

> 官方文档：[Callable objects](https://dart.dev/language/callable-objects)

