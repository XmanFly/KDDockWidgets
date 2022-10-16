import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

// Will be moved to a plugin in the future
import "qrc:/kddockwidgets/qtquick/views/qml/" as KDDW

KDDW.TitleBarBase {
    id: root

    readonly property QtObject closeButton: closeButton

    color: titleBarCpp ? (titleBarCpp.isSelected ? "#1D1D1D" : "grey") : "grey"
    opacity: titleBarCpp ? (titleBarCpp.isSelected ? 1 : 0.6) : 0.3
    border.color: "#ff8b00"
    border.width: 2
    heightWhenVisible: 32

    Text {
        color: "white"
        font.bold: true
        text: root.title
        anchors {
            left: parent.left
            leftMargin: 10
            verticalCenter: root.verticalCenter
        }
    }

    RowLayout {
        anchors {
            right: root.right
            rightMargin: 10
            verticalCenter: root.verticalCenter
        }

        RoundButton {
            id: maxButton
            objectName: "maxBtn"
            radius: 2
            icon {
                source: titleBarCpp ? (titleBarCpp.isMaximized ? "qrc:/maximizeRestore.ico" : "qrc:/maximize.ico") : "qrc:/xmark.ico"
                color: "white"
            }
            background: Item {}
            onClicked: {
                root.maximizeButtonClicked();
            }
        }
        RoundButton {
            id: closeButton
            objectName: "closeBtn"
            radius: 2
            icon {
                source: "qrc:/xmark.ico"
                color: "white"
            }
            visible: root.closeButtonVisible
            background: Item {}
            onClicked: {
                root.closeButtonClicked();
            }
        }
    }
}
