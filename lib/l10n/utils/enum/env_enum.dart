enum Environment {
  dev('dev'),
  stg('stg'),
  prod('prod');

  final String value;
  const Environment(this.value);
}
