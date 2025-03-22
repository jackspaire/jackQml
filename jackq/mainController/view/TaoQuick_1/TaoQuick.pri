CONFIG(debug,debug|release){
    # debug mode use local file
    win32{
        path=$$system("cd")
        path ~=s,\\\\,/,g
    } else {
        path=$$system("pwd")
    }
    DEFINES += TaoQuickImportPath=\\\"file:///$${path}/\\\"

    OTHER_FILES += $$files($$path/TaoQuick/Qml/*.qml, true)

} else {
    # release mode use qrc file
    RESOURCES += $$PWD/TaoQuick/TaoQuick.qrc
    # release mode set importPath with 'qrc:///'
    DEFINES += TaoQuickImportPath=\\\"qrc:///\\\"
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH	= $$PWD
QML2_IMPORT_PATH = $$PWD

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH = $$PWD


