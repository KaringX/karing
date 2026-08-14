#include "my_application.h"

int main(int argc, char** argv) {
  my_application_configure_windowing();
  g_autoptr(MyApplication) app = my_application_new();
  return g_application_run(G_APPLICATION(app), argc, argv);
}
