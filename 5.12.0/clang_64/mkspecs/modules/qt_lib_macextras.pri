QT.macextras.VERSION = 5.12.0
QT.macextras.name = QtMacExtras
QT.macextras.module = QtMacExtras
QT.macextras.libs = $$QT_MODULE_LIB_BASE
QT.macextras.includes = $$QT_MODULE_LIB_BASE/QtMacExtras.framework/Headers
QT.macextras.frameworks = $$QT_MODULE_LIB_BASE
QT.macextras.bins = $$QT_MODULE_BIN_BASE
QT.macextras.depends = core gui
QT.macextras.run_depends = gui_private core_private widgets
QT.macextras.uses =
QT.macextras.module_config = v2 lib_bundle
QT.macextras.DEFINES = QT_MACEXTRAS_LIB
QT.macextras.enabled_features =
QT.macextras.disabled_features =
QT_CONFIG +=
QT_MODULES += macextras
