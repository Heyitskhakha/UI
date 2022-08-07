import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.3

Window {
    id: mainWindow
    width: 640
    height: 1280
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")

    Rectangle {
        id: bw
        color: "#2c313c"
        border.color: "#221e1e"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10

        Rectangle {
            id: appcontainer
            color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#3a3b3e"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                Rectangle {
                    id: content
                    x: 0
                    y: 60
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: topBar.bottom
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0

                    Rectangle {
                        id: leftmenu
                        width: 70
                        color: "#3a3b3e"
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 0
                        anchors.bottomMargin: -1199
                        anchors.topMargin: 0
                    }
                }
            }
        }
    }
}
