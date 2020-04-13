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
    maximumHeight: height
    maximumWidth: width


    Rectangle {
        id: board
        width: 500/640*parent.width
        height: width
        color: "#c17d11"
        radius: 10
        anchors.verticalCenterOffset: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


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
            RotationAnimation on rotation {
                id: animr11
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl11
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu11
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd11
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr12
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl12
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu12
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd12
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr13
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl13
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu13
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd13
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr14
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl14
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu14
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd14
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr21
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl21
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu21
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd21
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr22
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl22
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu22
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd22
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr23
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl23
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu23
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd23
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr24
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl24
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu24
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd24
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr31
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl31
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu31
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd31
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr32
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl32
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu32
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd32
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr33
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl33
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu33
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd33
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr34
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl34
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu34
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd34
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            anchors.topMargin: 20

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
            RotationAnimation on rotation {
                id: animr41
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl41
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu41
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd41
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr42
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl42
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu42
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd42
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr43
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl43
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu43
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd43
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
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
            RotationAnimation on rotation {
                id: animr44
                running: button_right.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animl44
                running: button_left.pressed
                from:0; to:-360
                alwaysRunToEnd: true
            }
            RotationAnimation on rotation {
                id: animu44
                running:button_up.pressed
                from: 0; to:360
                alwaysRunToEnd:true
            }
            RotationAnimation on rotation {
                id: animd44
                running: button_down.pressed
                from: 0; to:-360
                alwaysRunToEnd:true
            }
        }


    }

    Rectangle {
        id: scoreboard
        x: 534
        y: 5
        width: 100
        height: 60
        color: "#c17d11"
        radius: 10
        anchors.verticalCenterOffset: -260
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

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
            text: jeu.scores
            font.bold: true
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            font.pixelSize: 30
        }
    }

    Rectangle {
        id: boutons
        x: 0
        y: 64
        width: 640
        height: 200
        color: "#00000000"
        clip: false
        opacity: 1
        visible: true
        layer.textureSize.height: 1
        layer.textureSize.width: 1
        enabled: true

        focus: true
        Keys.onPressed: {
            switch (event.key){
            case Qt.Key_Up:
                jeu.dep_haut();
                animu11.start();
                animu12.start();
                animu13.start();
                animu14.start();
                animu21.start();
                animu22.start();
                animu23.start();
                animu24.start();
                animu31.start();
                animu32.start();
                animu33.start();
                animu34.start();
                animu41.start();
                animu42.start();
                animu43.start();
                animu44.start();
                break;
            case Qt.Key_Down:
                jeu.dep_bas();
                animd11.start();
                animd12.start();
                animd13.start();
                animd14.start();
                animd21.start();
                animd22.start();
                animd23.start();
                animd24.start();
                animd31.start();
                animd32.start();
                animd33.start();
                animd34.start();
                animd41.start();
                animd42.start();
                animd43.start();
                animd44.start();
                break;
            case Qt.Key_Left:
                jeu.dep_gauche();
                animl11.start();
                animl12.start();
                animl13.start();
                animl14.start();
                animl21.start();
                animl22.start();
                animl23.start();
                animl24.start();
                animl31.start();
                animl32.start();
                animl33.start();
                animl34.start();
                animl41.start();
                animl42.start();
                animl43.start();
                animl44.start();
                break;
            case Qt.Key_Right:
                jeu.dep_droite();
                animd11.start();
                animd12.start();
                animd13.start();
                animd14.start();
                animd21.start();
                animd22.start();
                animd23.start();
                animd24.start();
                animd31.start();
                animd32.start();
                animd33.start();
                animd34.start();
                animd41.start();
                animd42.start();
                animd43.start();
                animd44.start();
                break;
            }
        }



        Rectangle {
            id: croix_dir
            x: parent.width-width
            y: (parent.height - height)/2
            width: 176
            height: 176
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 160
            anchors.horizontalCenter: parent.horizontalCenter
            //hoverEnabled: true
            enabled: true
            //focus: true

            Button {
                id: button_up
                x: (parent.width-width)/2
                y: 0
                width: parent.width/3
                height: parent.height/3
                //text: qsTr("Haut")
                onClicked: jeu.dep_haut()

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
                onClicked: jeu.dep_droite()


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
                onClicked: jeu.dep_bas()

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
                onClicked: jeu.dep_gauche()


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
            id: frame_retour
            x: 0
            y: (parent.height - height)/2
            width: 164
            height: 103
            color: "#00000000"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -165
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: true
            focus: true

            Button {
                id: button_y
                x: parent.width/2
                y: 0
                width: parent.width/2 - 2
                height: parent.height
                onClicked: jeu.suiv()
                Image {
                    id: image_y
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height
                    scale: 1
                    mirror: true
                    z: 0
                    source: "images/retour.PNG"
                    rotation: 0
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: button_z
                x: 0
                y: 0
                width: parent.width/2 -2
                height: parent.height
                onClicked: jeu.prec()
                Image {
                    id: image_z
                    x: 0
                    y: 0
                    width: parent.width
                    height: parent.height
                    source: "images/retour.PNG"
                    rotation: 0
                    fillMode: Image.PreserveAspectFit
                }
            }

        }
    }




}




