import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

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

    Frame {
        id: frame
        x: 220
        y: 79
        width: 176
        height: 176

        Button {
            id: button_up
            x: (parent.width-width)/2
            y: 0
            width: parent.width/3
            height: parent.height/3
            text: qsTr("Button")

            Image {
                x: 0
                y: 0
                id: image_up
                width: parent.width
                height: parent.height
                fillMode: Image.PreserveAspectFit
                source: "images/bouton_up.png"
            }
        }

        Button {
            id: button_right
            x: parent.width - width
            y: (parent.height-height)/2
            width: parent.width/3
            height: parent.height/3
            text: qsTr("Button")

            Image {
                x: 0
                y: 0
                id: image_right
                width: parent.width
                height: parent.height
                rotation: 90
                fillMode: Image.PreserveAspectFit
                source: "images/bouton_up.png"
            }
        }

        Button {
            id: button_down
            x: (parent.width-width)/2
            y: parent.height-height
            width: parent.width/3
            height: parent.height/3
            text: qsTr("Button")

            Image {
                x: 0
                y: 0
                id: image_down
                width: parent.width
                height: parent.height
                rotation: 180
                fillMode: Image.PreserveAspectFit
                source: "images/bouton_up.png"
            }
        }

        Button {
            id: button_left
            x: 0
            y: (parent.height-height)/2
            width: parent.width/3
            height: parent.height/3
            text: qsTr("Button")

            Image {
                x: 0
                y: 0
                id: image_left
                width: parent.width
                height: parent.height
                rotation: -90
                fillMode: Image.PreserveAspectFit
                source: "images/bouton_up.png"
            }
        }
    }
}
