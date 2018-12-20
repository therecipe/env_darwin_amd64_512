QT.webenginecore.VERSION = 5.12.0
QT.webenginecore.name = QtWebEngineCore
QT.webenginecore.module = QtWebEngineCore
QT.webenginecore.libs = $$QT_MODULE_LIB_BASE
QT.webenginecore.includes = $$QT_MODULE_LIB_BASE/QtWebEngineCore.framework/Headers
QT.webenginecore.frameworks = $$QT_MODULE_LIB_BASE
QT.webenginecore.bins = $$QT_MODULE_BIN_BASE
QT.webenginecore.depends = core gui qml quick positioning webchannel
QT.webenginecore.run_depends = quick_private gui_private core_private webenginecoreheaders_private
QT.webenginecore.uses =
QT.webenginecore.module_config = v2 lib_bundle
QT.webenginecore.DEFINES = QT_WEBENGINECORE_LIB
QT.webenginecore.enabled_features = webengine-geolocation webengine-spellchecker webengine-webchannel
QT.webenginecore.disabled_features = webengine-native-spellchecker
QT_CONFIG +=
QT_MODULES += webenginecore
