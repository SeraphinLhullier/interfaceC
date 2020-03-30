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
