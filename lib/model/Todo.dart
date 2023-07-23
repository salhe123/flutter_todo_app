class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'hey there', isDone: true),
      ToDo(id: '02', todoText: 'i want to remember the text ', isDone: true),
      ToDo(id: '03', todoText: 'the day when i i stand upe', isDone: true),
      ToDo(id: '04', todoText: 'where is the research', isDone: false),
      ToDo(id: '05', todoText: 'pick it and leave ', isDone: true),
      ToDo(id: '06', todoText: 'is that i am right way ', isDone: false),
    ];
  }
}
