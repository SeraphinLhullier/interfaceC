import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 640
    height: 840
    color: "#e9b96e"
    title: qsTr("Hello Warudo")

    Rectangle {
        id: rectangle
        width: 500
        height: 500
        color: "#c17d11"
        anchors.verticalCenterOffset: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
