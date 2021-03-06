#-------------------------------------------------
#
# Project created by QtCreator
#
#-------------------------------------------------

QT -= core gui

TARGET = sample-spaceship
TEMPLATE = app

SOURCES += src/SpaceshipGame.cpp

HEADERS += src/SpaceshipGame.h 

CONFIG += c++11

INCLUDEPATH += $$PWD/../../gameplay/src
INCLUDEPATH += $$PWD/../../external-deps/include
LIBS += -L$$PWD/../../gameplay/Debug/ -lgameplay
PRE_TARGETDEPS += $$PWD/../../gameplay/Debug/libgameplay.a

linux: QMAKE_CXXFLAGS += -lstdc++ -pthread -w
linux: DEFINES += GP_USE_GAMEPAD
linux: DEFINES += __linux__
linux: INCLUDEPATH += /usr/include/gtk-2.0
linux: INCLUDEPATH += /usr/lib/x86_64-linux-gnu/gtk-2.0/include
linux: INCLUDEPATH += /usr/include/atk-1.0
linux: INCLUDEPATH += /usr/include/cairo
linux: INCLUDEPATH += /usr/include/gdk-pixbuf-2.0
linux: INCLUDEPATH += /usr/include/pango-1.0
linux: INCLUDEPATH += /usr/include/gio-unix-2.0
linux: INCLUDEPATH += /usr/include/freetype2
linux: INCLUDEPATH += /usr/include/glib-2.0
linux: INCLUDEPATH += /usr/lib/x86_64-linux-gnu/glib-2.0/include
linux: INCLUDEPATH += /usr/include/pixman-1
linux: INCLUDEPATH += /usr/include/libpng12
linux: INCLUDEPATH += /usr/include/harfbuzz
linux: LIBS += -L$$PWD/../../external-deps/lib/linux/x86_64/ -lgameplay-deps
linux: LIBS += -lm
linux: LIBS += -lGL
linux: LIBS += -lrt
linux: LIBS += -ldl
linux: LIBS += -lX11
linux: LIBS += -lpthread
linux: LIBS += -lgtk-x11-2.0
linux: LIBS += -lglib-2.0
linux: LIBS += -lgobject-2.0
linux: PRE_TARGETDEPS += $$PWD/../../external-deps/lib/linux/x86_64/libgameplay-deps.a
linux: QMAKE_POST_LINK += $$quote(rsync -rau $$PWD/../../gameplay/res/shaders ../res$$escape_expand(\n\t))
linux: QMAKE_POST_LINK += $$quote(rsync -rau $$PWD/../../gameplay/res/ui ../res$$escape_expand(\n\t))
linux: QMAKE_POST_LINK += $$quote(cp -rf $$PWD/../../gameplay/res/logo_powered_white.png ../res$$escape_expand(\n\t))

macx: QMAKE_CXXFLAGS += -x c++ -stdlib=libc++ -w -arch x86_64
macx: QMAKE_OBJECTIVE_CFLAGS += -x objective-c++ -stdlib=libc++ -w -arch x86_64
macx: DEFINES += GP_USE_GAMEPAD
macx: LIBS += -L$$PWD/../../external-deps/lib/macosx/x86_64/ -lgameplay-deps
macx: LIBS += -F/System/Library/Frameworks -framework GameKit
macx: LIBS += -F/System/Library/Frameworks -framework IOKit
macx: LIBS += -F/System/Library/Frameworks -framework QuartzCore
macx: LIBS += -F/System/Library/Frameworks -framework OpenAL
macx: LIBS += -F/System/Library/Frameworks -framework OpenGL
macx: LIBS += -F/System/Library/Frameworks -framework Cocoa
macx: QMAKE_POST_LINK += $$quote(rsync -rau $$PWD/../../gameplay/res/shaders ../res$$escape_expand(\n\t))
macx: QMAKE_POST_LINK += $$quote(rsync -rau $$PWD/../../gameplay/res/ui ../res$$escape_expand(\n\t))
macx: QMAKE_POST_LINK += $$quote(cp -rf $$PWD/../../gameplay/res/logo_powered_white.png ../res$$escape_expand(\n\t))
macx
{
    icon.files = icon.png
    icon.path = Contents/Resources
    QMAKE_BUNDLE_DATA += icon

    gameconfig.files = game.config
    gameconfig.path = Contents/Resources
    QMAKE_BUNDLE_DATA += gameconfig

    res.files = res
    res.path = Contents/Resources
    QMAKE_BUNDLE_DATA += res
}
