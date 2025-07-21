#
# Generated file, do not edit.
#

list(APPEND FLUTTER_PLUGIN_LIST
  build_info_windows
  connectivity_plus
  file_selector_windows
  flutter_inappwebview_windows
  flutter_secure_storage_windows
  hotkey_manager_windows
  open_dir_windows
  protocol_handler
  screen_capturer_windows
  screen_retriever_windows
  sentry_flutter
  share_plus
  tray_manager
  url_launcher_windows
  vpn_service
  window_manager
  windows_single_instance
)

list(APPEND FLUTTER_FFI_PLUGIN_LIST
)

set(PLUGIN_BUNDLED_LIBRARIES)

foreach(plugin ${FLUTTER_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${plugin}/windows plugins/${plugin})
  target_link_libraries(${BINARY_NAME} PRIVATE ${plugin}_plugin)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES $<TARGET_FILE:${plugin}_plugin>)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${plugin}_bundled_libraries})
endforeach(plugin)

foreach(ffi_plugin ${FLUTTER_FFI_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${ffi_plugin}/windows plugins/${ffi_plugin})
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${ffi_plugin}_bundled_libraries})
endforeach(ffi_plugin)
