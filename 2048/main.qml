import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3


Window {
    id: window
    visible: true
    width: 640
    height: 840
    color: "#f6dcb8"
    property alias scoreText: score.text
    title: qsTr("2048 par LI et Lhullier")


    Rectangle {
        id: board
        width: 500/640*parent.width
        height: width
        color: "#c17d11"
        radius: 10
        anchors.verticalCenterOffset: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        focus: true
        Keys.onPressed: {
            switch (event.key){
                case Qt.Key_Up:
                    jeu.deplacer_haut();
                    break;
                case Qt.Key_Down:
                    jeu.deplacer_bas();
                    break;
                case Qt.Key_Left:
                    jeu.deplacer_gauche();
                    break;
                case Qt.Key_Right:
                    jeu.deplacer_droite();
                    break;
            }
        }

        Rectangle {
            id: case11
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.right: parent.right
            anchors.rightMargin: 380
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20

            Text {
                id: t11
                color: "#5b3902"
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 40
                text: jeu.c11
            }
        }

        Rectangle {
            id: case12
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case11.right
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20

            Text {
                id: t12
                color: "#5b3902"
                text: jeu.c12
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case13
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case12.right
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20

            Text {
                id: t13
                color: "#5b3902"
                text: jeu.c13
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case14
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: case13.right
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20

            Text {
                id: t14
                color: "#5b3902"
                text: jeu.c14
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case21
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: case11.bottom
            anchors.topMargin: 20

            Text {
                id: t21
                color: "#5b3902"
                text: jeu.c21
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case22
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case21.right
            anchors.leftMargin: 20
            anchors.top: case12.bottom
            anchors.topMargin: 20

            Text {
                id: t22
                color: "#5b3902"
                text: jeu.c22
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case23
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case22.right
            anchors.leftMargin: 20
            anchors.top: case13.bottom
            anchors.topMargin: 20

            Text {
                id: t23
                color: "#5b3902"
                text: jeu.c23
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case24
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case23.right
            anchors.leftMargin: 20
            anchors.top: case14.bottom
            anchors.topMargin: 20

            Text {
                id: t24
                color: "#5b3902"
                text: jeu.c24
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case31
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: case21.bottom
            anchors.topMargin: 20

            Text {
                id: t31
                color: "#5b3902"
                text: jeu.c31
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case32
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case31.right
            anchors.leftMargin: 20
            anchors.top: case22.bottom
            anchors.topMargin: 20

            Text {
                id: t32
                color: "#5b3902"
                text: jeu.c32
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case33
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case32.right
            anchors.leftMargin: 20
            anchors.top: case23.bottom
            anchors.topMargin: 20

            Text {
                id: t33
                color: "#5b3902"
                text: jeu.c33
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case34
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case33.right
            anchors.leftMargin: 20
            anchors.top: case24.bottom
            anchors.topMargin: 20

            Text {
                id: t34
                color: "#5b3902"
                text: jeu.c34
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case41
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: case31.bottom
            anchors.topMargin: 10

            Text {
                id: t41
                color: "#5b3902"
                text: jeu.c41
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case42
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case41.right
            anchors.leftMargin: 20
            anchors.top: case32.bottom
            anchors.topMargin: 20

            Text {
                id: t42
                color: "#5b3902"
                text: jeu.c42
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case43
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case42.right
            anchors.leftMargin: 20
            anchors.top: case33.bottom
            anchors.topMargin: 20

            Text {
                id: t43
                color: "#5b3902"
                text: jeu.c43
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: case44
            width: 100
            height: 100
            color: "#e9b96e"
            radius: 5
            anchors.left: case43.right
            anchors.leftMargin: 20
            anchors.top: case34.bottom
            anchors.topMargin: 20

            Text {
                id: t44
                color: "#5b3902"
                text: jeu.c44
                font.pixelSize: 40
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }


    }

    Frame {
        id: frame
        x: 394
        y: 57
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

    Rectangle {
        id: scoreboard
        x: 270
        y: 115
        width: 100
        height: 60
        color: "#c17d11"
        radius: 10

        Text {
            id: scoretext
            width: 100
            height: 50
            color: "#f6dcb0"
            text: qsTr("Score")
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 20
        }

        Text {
            id: score
            color: "#ffffff"
            text: qsTr("0")
            font.bold: true
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            font.pixelSize: 30
        }
    }

    Item {
        id: allwind
        anchors.fill: parent

    }


}



/*##^##
Designer {
    D{i:2;anchors_width:100}D{i:4;anchors_x:2;anchors_y:7}D{i:6;anchors_width:100;anchors_x:9;anchors_y:"-6"}
D{i:8;anchors_width:100;anchors_x:0;anchors_y:"-2"}D{i:10;anchors_x:"-4";anchors_y:4}
D{i:12;anchors_x:"-8";anchors_y:1}D{i:14;anchors_x:"-6";anchors_y:7}D{i:16;anchors_x:"-6";anchors_y:1}
D{i:18;anchors_x:0;anchors_y:10}D{i:20;anchors_x:4;anchors_y:19}D{i:22;anchors_x:"-4";anchors_y:8}
D{i:24;anchors_x:7;anchors_y:13}D{i:26;anchors_x:8;anchors_y:19}D{i:28;anchors_x:1;anchors_y:26}
D{i:30;anchors_x:16;anchors_y:14}D{i:32;anchors_x:16;anchors_y:17}D{i:46;anchors_height:200;anchors_width:200}
}
##^##*/
