//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <applications_info/applications_info_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) applications_info_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ApplicationsInfoPlugin");
  applications_info_plugin_register_with_registrar(applications_info_registrar);
}
