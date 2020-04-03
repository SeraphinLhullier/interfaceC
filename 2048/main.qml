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
    Keys.onPressed: {
     switch (event.key) {
     case Qt.Key_Up:
     cout << "haut";
     break;
     case Qt.Key_Down:
     cout << "bas"
     break;
     }
    }

    Rectangle {
        id: rectangle
        width: 500/640*parent.width
        height: width
        color: "#c17d11"
        anchors.verticalCenterOffset: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


        Grid {
            id: grid
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            anchors.topMargin: 20
            spacing: 20
            rows: 4
            columns: 4
            anchors.fill: parent

            Tuile {
                id: tuile
                width: 100
                height: 100
            }

            Tuile {
                id: tuile1
                width: 100
                height: 100
            }

            Tuile {
                id: tuile2
                width: 100
                height: 100
            }

            Tuile {
                id: tuile3
                width: 100
                height: 100
            }

            Tuile {
                id: tuile4
                width: 100
                height: 100
            }

            Tuile {
                id: tuile5
                width: 100
                height: 100
            }

            Tuile {
                id: tuile6
                width: 100
                height: 100
            }

            Tuile {
                id: tuile7
                width: 100
                height: 100
            }

            Tuile {
                id: tuile8
                width: 100
                height: 100
            }

            Tuile {
                id: tuile9
                width: 100
                height: 100
            }

            Tuile {
                id: tuile10
                width: 100
                height: 100
            }

            Tuile {
                id: tuile11
                width: 100
                height: 100
            }

            Tuile {
                id: tuile12
                width: 100
                height: 100
            }

            Tuile {
                id: tuile13
                width: 100
                height: 100
            }

            Tuile {
                id: tuile14
                width: 100
                height: 100
            }

            Tuile {
                id: tuile15
                width: 100
                height: 100
            }
        }

    }

    Frame {
        id: frame
        x: 232
        y: 0
        width: 176
        height: 176
        hoverEnabled: true
        enabled: true

        Button {
            id: button_up
            x: (parent.width-width)/2
            y: 0
            width: parent.width/3
            height: parent.height/3
            //text: qsTr("Haut")

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
            //text: qsTr("Droite")

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
            //text: qsTr("Bas")

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
            //text: qsTr("Gauche")

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

/*##^##
Designer {
    D{i:3;anchors_height:200;anchors_width:200}D{i:4;anchors_height:200;anchors_width:200}
D{i:5;anchors_height:200;anchors_width:200}D{i:6;anchors_height:200;anchors_width:200}
D{i:7;anchors_height:200;anchors_width:200}D{i:8;anchors_height:200;anchors_width:200}
D{i:9;anchors_height:200;anchors_width:200}D{i:10;anchors_height:200;anchors_width:200}
D{i:11;anchors_height:200;anchors_width:200}D{i:12;anchors_height:200;anchors_width:200}
D{i:13;anchors_height:200;anchors_width:200}D{i:14;anchors_height:200;anchors_width:200}
D{i:15;anchors_height:200;anchors_width:200}D{i:16;anchors_height:200;anchors_width:200}
D{i:17;anchors_height:200;anchors_width:200}D{i:18;anchors_height:200;anchors_width:200}
D{i:2;anchors_height:400;anchors_width:400;anchors_x:118;anchors_y:133}
}
##^##*/
