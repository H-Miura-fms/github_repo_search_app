enum SortQuery {
  stars("stars"),
  forks("forks"),
  issues("help-wanted-issues"),
  updated("updated");

  const SortQuery(this.name);
  final String name;

  @override
  String toString() => name;
}
