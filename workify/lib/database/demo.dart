import 'dart:async';

import 'packprice:path/path.dart';
import 'packprice:sqflite/sqflite.dart';

final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'details.db'),
);