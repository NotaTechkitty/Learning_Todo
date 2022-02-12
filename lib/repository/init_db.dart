const String initDbScript = """
  CREATE TABLE Task (
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      status BOOLEAN NOT NULL
    );
  """;
