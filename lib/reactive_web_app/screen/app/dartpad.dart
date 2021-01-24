class MyClass {}

void main() {
  List lVar = [];
  List<dynamic> ldynamic = [1, '2', false];
  List<String> lString = ['리스트', '안에', '반드시', '문자만'];
  List<int> lInt = [1, 2, 3];
  List<double> lDouble = [1.0, 2.0, 3.0];
  List<bool> lBool = [false, true, false];
  List<void> lVoid = [null, null, null];
  List<List> lList = [[], [], []];
  List<Set> lSet = [
    new Set(),
    new Set.from([]),
    new Set(),
  ];
  List<Map> lMap = [{}, {}];
  List<Function> lFunction = [
    () {},
    () {},
    () {},
  ];
  List<MyClass> lMyClass = [new MyClass(), MyClass()];

  List<List<String>> llString = [
    ['a'],
    ['b'],
    ['c']
  ];
  List<List<int>> llInt = [
    [1],
    [2],
    [3],
  ];
  List<List<double>> llDouble = [
    [10.0],
    [20.0],
    [20.0],
  ];
  List<List<bool>> llBool = [
    [
      false,
    ],
    [
      true,
    ],
    [
      false,
    ]
  ];
  List<List<void>> llVoid = [
    [null],
    [null],
    [null]
  ];
  List<List<List>> llList = [
    [[]],
    [[]],
    [[]],
    new List.from([List.empty()])
  ];
  List<List<Set>> llSet = [
    [Set()],
    [new Set()],
    [new Set.from([])]
  ];
  List<List<Map>> llMap = [
    [{}],
    [{}],
    [{}]
  ];
  List<List<Function>> llFunction = [
    [() {}],
    [() {}],
    [() {}]
  ];
  List<List<MyClass>> llMyClass = [
    [MyClass()],
    [new MyClass()]
  ];

  Set sa = new Set();
  Set sb =
      new Set.from([1, '2', '2', false, false, new MyClass(), new MyClass()]);
  Set<String> sc = new Set.from(['a', 'b', 'c']);
  Set<int> sd = new Set.from([1, 2, 3]);
  Set<double> se = new Set.from([1.0, 2.0, 3.0]);
  Set<bool> sf = new Set.from([false, true, false]);
  Set<void> sg = new Set.from([null, null, null]);
  Set<List> sList = new Set.from([
    [1, 2, 3],
    List.empty()
  ]);
  Set<Set> sSet = new Set.from([new Set(), new Set.from([])]);
  Set<Map> sMap = new Set.from([new Map(), {}]);
  Set<Function> sFunction = new Set.from([() {}, () {}]);
  Set<MyClass> sMyClass = new Set.from([new MyClass(), MyClass()]);
  Set<List<String>> slString = new Set.from([lString]);
  Set<List<int>> slInt = new Set.from([lInt]);
  Set<List<double>> slDouble = new Set.from([lDouble]);
  Set<List<bool>> slBool = new Set.from([lBool]);
  Set<List<void>> slVoid = new Set.from([lVoid]);
  Set<List<List>> slList = new Set.from([lList]);
  Set<List<Set>> slSet = new Set.from([lSet]);
  Set<List<Map>> slMap = new Set.from([lMap]);
  Set<List<Function>> slFunction = new Set.from([lFunction]);
  Set<List<MyClass>> slMyClass = new Set.from([lMyClass]);
}
