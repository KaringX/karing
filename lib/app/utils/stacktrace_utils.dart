class StackTraceUtils {
  static String trim(StackTrace stackTrace, int? depth) {
    List<String> st = stackTrace.toString().split('\n');
    for (int i = 0; i < st.length; i++) {
      if (depth != null && i >= depth) {
        // Trim the rest of the stack trace
        st.removeRange(i, st.length);
        break;
      }
    }
    return st.join("\n");
  }
}
