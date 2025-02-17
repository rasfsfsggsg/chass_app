import 'package:chess_app/models/cell.dart';
import 'package:chess_app/services/loggers/i_logger.dart';

class MoveLogger implements ILogger<Cell> {
  final List<Cell> _movements = [];

  @override
  add(note) {
    _movements.add(note);
  }

  @override
  clear() {
    _movements.clear();
  }

  @override
  remove(note) {
    _movements.remove(note);
  }

  @override
  List<Cell> getAll() {
    return _movements;
  }
}

MoveLogger createMoveLogger() {
  return MoveLogger();
}
