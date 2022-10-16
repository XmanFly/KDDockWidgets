/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2020-2022 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sergio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

import QtQuick 2.6
import QtQuick.Controls 2.12
import com.kdab.dockwidgets 2.0 as KDDW

ApplicationWindow {
    visible: true
    width: 1000
    height: 800

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")

            Action {
                text: qsTr("Save layout")
                onTriggered: {
                    layoutSaver.saveToFile("mySavedLayout.json");
                }
            }

            Action {
                text: qsTr("Restore layout")
                onTriggered: {
                    layoutSaver.restoreFromFile("mySavedLayout.json");
                }
            }

            Action {
                text: qsTr("Toggle widget #4")
                onTriggered: {
                    toggleDockWidget(dock4);
                }
            }

            Action {
                text: qsTr("Toggle widget #5")
                onTriggered: {
                    toggleDockWidget(dock5);
                }
            }

            Action {
                text: qsTr("Toggle widget #6")
                onTriggered: {
                    toggleDockWidget(dock6);
                }
            }

            Action {
                text: qsTr("Close All")
                onTriggered: {
                   _kddwDockRegistry.clear();
                }
            }

            MenuSeparator { }
            Action { text: qsTr("&Quit")
                onTriggered: {
                    Qt.quit();
                }
            }
        }
    }

    KDDW.DockingArea {
        anchors.fill: parent

        // Each main layout needs a unique id
        uniqueName: "MainLayout-1"

//        Repeater {
//            model: 3
//            KDDW.DockWidget {
//                uniqueName: "fromRepeater-" + index
//                source: ":/Another.qml"
//            }
//        }

//        KDDW.DockWidget {
//            id: dock2
//            uniqueName: "dock2" // Each dock widget needs a unique id
//            source: ":/Another.qml"
//            property var lastTitleBar: null
//            onActualTitleBarChanged: {
////            Component.onCompleted: {
//                console.log("zya title bar onActualTitleBarChanged " + uniqueName +
//                            " last title bar " + lastTitleBar +
//                            " current title bar " + actualTitleBar
//                            + "\r\n")

//                if(actualTitleBar == null){
//                    return
//                }

//                if(actualTitleBar != lastTitleBar) {
//                    /* 同步属性 */
//                    if(lastTitleBar != null){
////                        actualTitleBar.isMaximized = lastTitleBar.isMaximized
//                        actualTitleBar.isSelected = lastTitleBar.isSelected
//                    }

//                    actualTitleBar.onSig_exit.connect(function(){
//                        console.log("zya title bar KDDW buffer exit click")
//                    })
//                    actualTitleBar.isSelected = Qt.binding(function(){
//                        return true;
//                    })
//                    actualTitleBar.onUserClickedChanged.connect(function(){
//                        console.log("zya title bar KDDW buffer user click")
//                    })
//                    actualTitleBar.onIsMaximizedChanged.connect(function(){
//                        console.log("zya title bar KDDW buffer max1 click actual " + uniqueName + " " + actualTitleBar + " " + actualTitleBar.isMaximized)
//                        if(actualTitleBar.isMaximized) {
//                            layoutSaver.maximizeItem(uniqueName)
//                        } else {
//                            layoutSaver.restoreFromFile("mySavedLayout.json");
//                        }
//                        console.log("zya title bar KDDW buffer max2 click actual " + uniqueName + " "  + actualTitleBar + " " + actualTitleBar.isMaximized)
//                        console.log()
//                    })
//                    //保存本次标题栏
//                    lastTitleBar = actualTitleBar
//                }
//            }
//        }

//        KDDW.DockWidget {
//            id: dock4
//            uniqueName: "dock4" // Each dock widget needs a unique id
//            source: ":/Another.qml"
//            property var lastTitleBar: null
//            onActualTitleBarChanged: {
////            Component.onCompleted: {
//                console.log("zya title bar onActualTitleBarChanged " + uniqueName +
//                            " last title bar " + lastTitleBar +
//                            " current title bar " + actualTitleBar
//                            + "\r\n")

//                if(actualTitleBar == null){
//                    return
//                }

//                if(actualTitleBar != lastTitleBar) {
//                    /* 同步属性 */
//                    if(lastTitleBar != null){
//                        actualTitleBar.isSelected = lastTitleBar.isSelected
//                    }

//                    actualTitleBar.onSig_exit.connect(function(){
//                        console.log("zya title bar KDDW buffer exit click")
//                    })
//                    actualTitleBar.isSelected = Qt.binding(function(){
//                        return true;
//                    })
//                    actualTitleBar.onUserClickedChanged.connect(function(){
//                        console.log("zya title bar KDDW buffer user click")
//                    })
//                    actualTitleBar.onIsMaximizedChanged.connect(function(){
//                        console.log("zya title bar KDDW buffer max1 click actual " + uniqueName + " "  + actualTitleBar + " " + actualTitleBar.isMaximized)
//                        if(actualTitleBar.isMaximized) {
//                            layoutSaver.maximizeItem(uniqueName)
//                        } else {
//                            layoutSaver.restoreFromFile("mySavedLayout.json");
//                        }
//                        console.log("zya title bar KDDW buffer max2 click actual " + uniqueName + " "  + actualTitleBar + " " + actualTitleBar.isMaximized)
//                        console.log()
//                    })
//                    //保存本次标题栏
//                    lastTitleBar = actualTitleBar
//                }
//            }
//        }

//        KDDW.DockWidget {
//            id: dock5
//            uniqueName: "dock5"
//            Rectangle {
//                id: guest
//                color: "pink"
//                anchors.fill: parent
//                Button {
//                    anchors.centerIn: parent
//                    text: "maximize"
//                    onClicked: {
//                        layoutSaver.maximizeItem(dock5.uniqueName)
//                    }
//                }
//            }
//            property var lastTitleBar: null
//            onActualTitleBarChanged: {
////            Component.onCompleted: {
//                console.log("zya title bar onActualTitleBarChanged " + uniqueName +
//                            " last title bar " + lastTitleBar +
//                            " current title bar " + actualTitleBar
//                            + "\r\n")

//                if(actualTitleBar == null){
//                    return
//                }

//                if(actualTitleBar != lastTitleBar) {
//                    /* 同步属性 */
//                    if(lastTitleBar != null){
//                        actualTitleBar.isSelected = lastTitleBar.isSelected
//                    }

//                    actualTitleBar.onSig_exit.connect(function(){
//                        console.log("zya title bar KDDW buffer exit click")
//                    })
//                    actualTitleBar.isSelected = Qt.binding(function(){
//                        return true;
//                    })
//                    actualTitleBar.onUserClickedChanged.connect(function(){
//                        console.log("zya title bar KDDW buffer user click")
//                    })
//                    actualTitleBar.onIsMaximizedChanged.connect(function(){
//                        console.log("zya title bar KDDW buffer max1 click actual " + uniqueName + " "  + actualTitleBar + " " + actualTitleBar.isMaximized)
//                        if(actualTitleBar.isMaximized) {
//                            layoutSaver.maximizeItem(uniqueName)
//                        } else {
//                            layoutSaver.restoreFromFile("mySavedLayout.json");
//                        }
//                        console.log("zya title bar KDDW buffer max2 click actual " + uniqueName + " "  + actualTitleBar + " " + actualTitleBar.isMaximized)
//                        console.log()
//                    })
//                    //保存本次标题栏
//                    lastTitleBar = actualTitleBar
//                }
//            }
//        }

//        KDDW.DockWidget {
//            id: dock6
//            uniqueName: "dock6"
//            Rectangle {
//                color: "black"
//            }
//        }

        KDDW.DockWidget {
            id: dock7
            uniqueName: "dock7"
            source: ":/Another.qml"
            property var titleBarList: []
            onActualTitleBarChanged: {
                if(actualTitleBar == null){
                    return
                }

                if(titleBarList.indexOf(actualTitleBar) < 0) {
                    actualTitleBar.onIsMaximizedChanged.connect(function(){
                        console.log("zya title bar "  + uniqueName + " max1 click actual " + actualTitleBar + " " + actualTitleBar.isMaximized)
                        if(actualTitleBar.isMaximized) {
                            layoutSaver.maximizeItem(uniqueName)
                            console.log("zya title bar "  + uniqueName + " max2 click " + " maximize ")
                        } else {
                            layoutSaver.restoreFromFile("mySavedLayout.json");
                            console.log("zya title bar "  + uniqueName + " max3 click " + " restore ")
                        }
                        console.log("zya title bar "  + uniqueName + " max4 click actual " + actualTitleBar + " " + actualTitleBar.isMaximized)
                        console.log()
                    })
                    //保存本次标题栏
                    titleBarList.push(actualTitleBar)
                }
            }
        }

        KDDW.DockWidget {
            id: dock8
            uniqueName: "dock8"
            source: ":/Another.qml"
            property var titleBarList: []
            onActualTitleBarChanged: {
                if(actualTitleBar == null){
                    return
                }

                if(titleBarList.indexOf(actualTitleBar) < 0) {
                    actualTitleBar.onIsMaximizedChanged.connect(function(){
                        console.log("zya title bar "  + uniqueName + " max1 click actual " + actualTitleBar + " " + actualTitleBar.isMaximized)
                        if(actualTitleBar.isMaximized) {
                            layoutSaver.maximizeItem(uniqueName)
                            console.log("zya title bar "  + uniqueName + " max2 click " + " maximize ")
                        } else {
                            layoutSaver.restoreFromFile("mySavedLayout.json");
                            console.log("zya title bar "  + uniqueName + " max3 click " + " restore ")
                        }
                        console.log("zya title bar "  + uniqueName + " max4 click actual " + actualTitleBar + " " + actualTitleBar.isMaximized)
                        console.log()
                    })
//                    if(titleBarList.length > 0) {
//                        console.log("zya titleBar " + titleBarList)
//                        var lastTitleBar = titleBarList[titleBarList.length - 1]
//                        actualTitleBar.onSig_exit.connect(function(){
//                            console.log("zya title bar KDDW buffer exit click")
//                        })
//                        actualTitleBar.isSelected = Qt.binding(function(){
//                            return true;
//                        })
//                        actualTitleBar.onUserClickedChanged.connect(function(){
//                            console.log("zya title bar KDDW buffer user click")
//                        })
//                        /* 同步属性 */
//                        actualTitleBar.isSelected = lastTitleBar.isSelected
//                    }


                    //保存本次标题栏
                    titleBarList.push(actualTitleBar)
                }
            }
        }

        Component.onCompleted: {
            addDockWidget(dock8, KDDW.KDDockWidgets.Location_OnTop);
            addDockWidget(dock7, KDDW.KDDockWidgets.Location_OnTop);

//            addDockWidget(dock2, KDDW.KDDockWidgets.Location_OnTop);
            // Add dock8 to the left of dock4
//            addDockWidget(dock8, KDDW.KDDockWidgets.Location_OnRight, dock2);

//            // Add dock4 to the Bottom location
//            addDockWidget(dock4, KDDW.KDDockWidgets.Location_OnBottom);

//            // Add dock5 to the left of dock4
//            addDockWidget(dock5, KDDW.KDDockWidgets.Location_OnRight, dock4);

            // Adds dock6 but specifies a preferred initial size and it starts hidden
            // When toggled it will be shown on the desired dock location.
            // See MainWindowInstantiator_p.h for the API
//            addDockWidget(dock6, KDDW.KDDockWidgets.Location_OnLeft, null,
//                                 Qt.size(500, 100), KDDW.KDDockWidgets.StartHidden);


            // dock7 will be tabbed with dock7:
//            dock5.addDockWidgetAsTab(dock7);

        }
    }

    KDDW.LayoutSaver {
        id: layoutSaver
    }

    function toggleDockWidget(dw) {
        if (dw.dockWidget.isOpen()) {
            dw.dockWidget.close();
        } else {
            dw.dockWidget.show();
        }
    }
}
