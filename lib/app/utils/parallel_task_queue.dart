class ParallelTaskQueue<T> {
  bool _canceled = false;
  bool _scheduling = false;
  List<T> _tasks = [];
  final List<T> _tasksPreRun = [];
  final List<T> _tasksRunning = [];
  final List<T> _tasksRunnFinished = [];
  int _maxConcurrentTasks = 0;
  Future<T> Function(T task)? _taskHandler;
  void Function(T task, int left, int total, bool start, bool finish)?
      _taskProcessHandler;

  ParallelTaskQueue(
      Future<T> Function(T) taskHandler,
      void Function(T task, int left, int total, bool start, bool finish)?
          taskProcessHandler,
      int maxConcurrentTasks,
      List<T> tasks) {
    _taskHandler = taskHandler;
    _taskProcessHandler = taskProcessHandler;
    _maxConcurrentTasks = maxConcurrentTasks;
    _tasks = tasks;
  }
  void addTasks(List<T> tasks) {
    _tasks.addAll(tasks);
  }

  bool run() {
    if (_taskHandler == null ||
        _tasks.isEmpty ||
        _maxConcurrentTasks <= 0 ||
        _canceled) {
      return false;
    }
    if (_tasksRunning.isEmpty) {
      Future.delayed(const Duration(milliseconds: 0), () {
        _scheduler();
      });
    }

    return true;
  }

  void cancel() {
    _canceled = true;
    Future.delayed(const Duration(milliseconds: 10), () {
      _scheduler();
    });
  }

  bool running(T task) {
    return _tasksRunning.contains(task);
  }

  bool hasTask(T task) {
    if (running(task)) {
      return true;
    }
    return _tasks.contains(task);
  }

  bool finished() {
    return _tasks.isEmpty &&
        _tasksPreRun.isEmpty &&
        _tasksRunning.isEmpty &&
        _tasksRunnFinished.isEmpty;
  }

  void _scheduler() {
    if (_scheduling) {
      Future.delayed(const Duration(milliseconds: 100), () {
        _scheduler();
      });
      return;
    }
    if (_canceled) {
      _tasks.clear();
      _tasksPreRun.clear();
      _tasksRunning.clear();
      _tasksRunnFinished.clear();
      return;
    }
    _scheduling = true;
    for (int i = 0; i < _tasks.length; i++) {
      if (_tasksPreRun.length + _tasksRunning.length >= _maxConcurrentTasks) {
        break;
      }
      _tasksPreRun.add(_tasks[i]);
      _tasks.removeAt(i);
      --i;
    }
    int total = _tasks.length +
        _tasksPreRun.length +
        _tasksRunning.length +
        _tasksRunnFinished.length;
    for (int i = 0; i < _tasksPreRun.length; i++) {
      T task = _tasksPreRun[i];
      if (_tasksRunning.contains(task)) {
        continue;
      }
      bool start = _tasksRunning.isEmpty && _tasksRunnFinished.isEmpty;
      if (start) {
        _taskProcessHandler?.call(
          task,
          _tasks.length + _tasksPreRun.length + _tasksRunning.length,
          total,
          true,
          false,
        );
      }
      _tasksRunning.add(task);
      _tasksPreRun.remove(task);

      _taskHandler?.call(task).then((task0) {
        _tasksRunnFinished.add(task0);
        _tasksRunning.remove(task0);
        bool finish =
            _tasks.isEmpty && _tasksPreRun.isEmpty && _tasksRunning.isEmpty;

        _taskProcessHandler?.call(
          task,
          _tasks.length + _tasksPreRun.length + _tasksRunning.length,
          total,
          false,
          finish,
        );

        Future.delayed(const Duration(milliseconds: 10), () {
          _scheduler();
        });
      });
    }
    _scheduling = false;
  }
}
