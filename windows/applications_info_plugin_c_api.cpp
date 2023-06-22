#include "include/applications_info/applications_info_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "applications_info_plugin.h"

void ApplicationsInfoPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  applications_info::ApplicationsInfoPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
