const List<Point> EmptyArray = [];
const NoName = "";

///  use National Bureau of Statistics's data, build tree, the [point] is trees's node
class Point {
//  Point get nullPoint = () => {};
  int? code;
  List<Point> child;
  int depth;
  String? letter;
  String name = NoName;
  Point get nullPoint => Point(child: [], letter: null, name: NoName);
  bool get isNull => this.code == null;
  Point(
      {this.code = 0,
      this.child = EmptyArray,
      this.depth = 0,
      this.letter,
      this.name = NoName});

  /// add node for Point, the node's type must is [Point]
  addChild(Point node) {
    this.child.add(node);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{code: $code, name: $name, letter: $letter, child: Array & length = ${child == null ? 0 : child.length}";
  }
}
