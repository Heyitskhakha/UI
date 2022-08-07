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
                    id: topBarDescription
                    y: 22
                    height: 24
                    color: "#2c313c"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 70
                    anchors.bottomMargin: 0

                    Label {
                        id: labelTopInfo
                        color: "#6b98a9"
                        text: qsTr("Des")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 300
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }

                    Label {
                        id: labelTopInfo1
                        color: "#6b98a9"
                        text: qsTr("Home")
                        anchors.left: labelTopInfo.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }
                }

                Button {
                    id: togglebtn
                    x: 0
                    y: 0
                    width: 70
                    height: 60
                    text: qsTr("Button")
                }

                Rectangle {
                    id: titleBar
                    height: 22
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 70
                    anchors.topMargin: 0

                    Image {
                        id: image
                        width: 28
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "qrc:/qtquickplugin/images/template_image.png"
                        anchors.leftMargin: 5
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: label
                        color: "#c52f2f"
                        text: qsTr("Title Bar")
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 20
                        anchors.leftMargin: 5
                    }
                }

                Row {
                    id: row
                    x: 0
                    width: 105
                    height: 35
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.rightMargin: 0

                    Button {
                        id: button1
                        width: 35
                        height: 25
                        text: qsTr("Button")
                    }
                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 60

                Rectangle {
                    id: leftmenu
                    x: 0
                    y: 0
                    width: 70
                    color: "#3a3b3e"
                    anchors.left: parent.left
                    anchors.top: topBar.bottom
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0

                    Column {
                        id: column
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0

                        Button {
                            id: button
                            text: qsTr("Button")
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.leftMargin: 0
                            anchors.rightMargin: 0
                            anchors.topMargin: 0
                        }
                    }
                }

                Rectangle {
                    id: contentPages
                    x: 76
                    y: 14
                    color: "#00000000"
                    anchors.left: leftmenu.right
                    anchors.right: parent.right
                    anchors.top: topBar.bottom
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: -1
                    anchors.leftMargin: 1
                    anchors.bottomMargin: 25
                    anchors.topMargin: 10
                }

                Rectangle {
                    id: bottombar
                    color: "#2c313c"
                    anchors.left: leftmenu.right
                    anchors.right: parent.right
                    anchors.top: contentPages.bottom
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 30
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                }
            }
        }
    }
}


