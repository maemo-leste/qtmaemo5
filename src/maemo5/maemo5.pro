# Qt Maemo5 module

TARGET     = QtMaemo5
QPRO_PWD   = $$PWD
QT         = core-private gui-private dbus widgets-private x11extras
CONFIG    += x11 link_pkgconfig
DEFINES   += QT_BUILD_MAEMO5_LIB QT_NO_USING_NAMESPACE QT_USE_GTK_PRIVATE

PKGCONFIG += gtk+-2.0

QMAKE_CXXFLAGS += $$QT_CFLAGS_QGTKSTYLE
LIBS_PRIVATE += $$QT_LIBS_QGTKSTYLE

# include(../qbase.pri)

load(qt_module)

HEADERS += \
    qmaemo5informationbox.h \
    qmaemo5abstractpickselector.h \
    qmaemo5abstractpickselector_p.h \
    qmaemo5listpickselector.h \
    qmaemo5listpickselector_p.h \
    qmaemo5datepickselector.h \
    qmaemo5datepickselector_p.h \
    qmaemo5timepickselector.h \
    qmaemo5timepickselector_p.h \
    qmaemo5editbar.h \
    qmaemo5editbar_p.h \
    qmaemo5valuebutton.h \
    qmaemo5valuebutton_p.h

SOURCES += \
    qmaemo5informationbox.cpp \
    qmaemo5abstractpickselector.cpp \
    qmaemo5listpickselector.cpp \
    qmaemo5datepickselector.cpp \
    qmaemo5datetimepickselector.cpp \
    qmaemo5timepickselector.cpp \
    qmaemo5editbar.cpp \
    qmaemo5valuebutton.cpp
