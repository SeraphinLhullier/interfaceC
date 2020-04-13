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


    MenuBar{
        Menu{
            title: qsTr("&File")
            MenuItem {
                text: "Sauvegarder..."
                onTriggered: jeu.sauver_partie()
            }

            MenuItem {
                text: "Charger..."
                onTriggered: jeu.charger_partie()
            }
        }
    }

    Rectangle {
        id: board
        width: 500
        height: 500
        color: "#c17d11"
        radius: 10
        anchors.verticalCenterOffset: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


        Rectangle {
            id: case11
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case11
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t11.text){
                    case "":
                        case11.color="#f6dcb0";
                        break;
                    case "2":
                        case11.color="#e9b96e";
                        break;
                    case "4":
                        case11.color="#e5a965";
                        break;
                    case "8":
                        case11.color="#e1995d";
                        break;
                    case "16":
                        case11.color="#dd8a55";
                        break;
                    case "32":
                        case11.color="#d97a4d";
                        break;
                    case "64":
                        case11.color="#d56b45";
                        break;
                    case "128":
                        case11.color="#d15b3d";
                        break;
                    case "256":
                        case11.color="#cd4b35";
                        break;
                    case "512":
                        case11.color="#c93c2d";
                        break;
                    case "1024":
                        case11.color="#c52c25";
                        break;
                    default:
                        case11.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr11
//                running: t11.t
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl11
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu11
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd11
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case12
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case12
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t12.text){
                    case "":
                        case12.color="#f6dcb0";
                        break;
                    case "2":
                        case12.color="#e9b96e";
                        break;
                    case "4":
                        case12.color="#e5a965";
                        break;
                    case "8":
                        case12.color="#e1995d";
                        break;
                    case "16":
                        case12.color="#dd8a55";
                        break;
                    case "32":
                        case12.color="#d97a4d";
                        break;
                    case "64":
                        case12.color="#d56b45";
                        break;
                    case "128":
                        case12.color="#d15b3d";
                        break;
                    case "256":
                        case12.color="#cd4b35";
                        break;
                    case "512":
                        case12.color="#c93c2d";
                        break;
                    case "1024":
                        case12.color="#c52c25";
                        break;
                    default:
                        case12.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr12
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl12
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu12
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd12
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }

        }

        Rectangle {
            id: case13
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case13
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t13.text){
                    case "":
                        case13.color="#f6dcb0";
                        break;
                    case "2":
                        case13.color="#e9b96e";
                        break;
                    case "4":
                        case13.color="#e5a965";
                        break;
                    case "8":
                        case13.color="#e1995d";
                        break;
                    case "16":
                        case13.color="#dd8a55";
                        break;
                    case "32":
                        case13.color="#d97a4d";
                        break;
                    case "64":
                        case13.color="#d56b45";
                        break;
                    case "128":
                        case13.color="#d15b3d";
                        break;
                    case "256":
                        case13.color="#cd4b35";
                        break;
                    case "512":
                        case13.color="#c93c2d";
                        break;
                    case "1024":
                        case13.color="#c52c25";
                        break;
                    default:
                        case13.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr13
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl13
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu13
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd13
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case14
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case14
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t14.text){
                    case "":
                        case14.color="#f6dcb0";
                        break;
                    case "2":
                        case14.color="#e9b96e";
                        break;
                    case "4":
                        case14.color="#e5a965";
                        break;
                    case "8":
                        case14.color="#e1995d";
                        break;
                    case "16":
                        case14.color="#dd8a55";
                        break;
                    case "32":
                        case14.color="#d97a4d";
                        break;
                    case "64":
                        case14.color="#d56b45";
                        break;
                    case "128":
                        case14.color="#d15b3d";
                        break;
                    case "256":
                        case14.color="#cd4b35";
                        break;
                    case "512":
                        case14.color="#c93c2d";
                        break;
                    case "1024":
                        case14.color="#c52c25";
                        break;
                    default:
                        case14.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr14
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl14
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu14
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd14
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case21
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case21
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t21.text){
                    case "":
                        case21.color="#f6dcb0";
                        break;
                    case "2":
                        case21.color="#e9b96e";
                        break;
                    case "4":
                        case21.color="#e5a965";
                        break;
                    case "8":
                        case21.color="#e1995d";
                        break;
                    case "16":
                        case21.color="#dd8a55";
                        break;
                    case "32":
                        case21.color="#d97a4d";
                        break;
                    case "64":
                        case21.color="#d56b45";
                        break;
                    case "128":
                        case21.color="#d15b3d";
                        break;
                    case "256":
                        case21.color="#cd4b35";
                        break;
                    case "512":
                        case21.color="#c93c2d";
                        break;
                    case "1024":
                        case21.color="#c52c25";
                        break;
                    default:
                        case21.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr21
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl21
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu21
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd21
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case22
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case22
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t22.text){
                    case "":
                        case22.color="#f6dcb0";
                        break;
                    case "2":
                        case22.color="#e9b96e";
                        break;
                    case "4":
                        case22.color="#e5a965";
                        break;
                    case "8":
                        case22.color="#e1995d";
                        break;
                    case "16":
                        case22.color="#dd8a55";
                        break;
                    case "32":
                        case22.color="#d97a4d";
                        break;
                    case "64":
                        case22.color="#d56b45";
                        break;
                    case "128":
                        case22.color="#d15b3d";
                        break;
                    case "256":
                        case22.color="#cd4b35";
                        break;
                    case "512":
                        case22.color="#c93c2d";
                        break;
                    case "1024":
                        case22.color="#c52c25";
                        break;
                    default:
                        case22.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr22
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl22
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu22
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd22
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case23
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case23
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t23.text){
                    case "":
                        case23.color="#f6dcb0";
                        break;
                    case "2":
                        case23.color="#e9b96e";
                        break;
                    case "4":
                        case23.color="#e5a965";
                        break;
                    case "8":
                        case23.color="#e1995d";
                        break;
                    case "16":
                        case23.color="#dd8a55";
                        break;
                    case "32":
                        case23.color="#d97a4d";
                        break;
                    case "64":
                        case23.color="#d56b45";
                        break;
                    case "128":
                        case23.color="#d15b3d";
                        break;
                    case "256":
                        case23.color="#cd4b35";
                        break;
                    case "512":
                        case23.color="#c93c2d";
                        break;
                    case "1024":
                        case23.color="#c52c25";
                        break;
                    default:
                        case23.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr23
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl23
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu23
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd23
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case24
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case24
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t24.text){
                    case "":
                        case24.color="#f6dcb0";
                        break;
                    case "2":
                        case24.color="#e9b96e";
                        break;
                    case "4":
                        case24.color="#e5a965";
                        break;
                    case "8":
                        case24.color="#e1995d";
                        break;
                    case "16":
                        case24.color="#dd8a55";
                        break;
                    case "32":
                        case24.color="#d97a4d";
                        break;
                    case "64":
                        case24.color="#d56b45";
                        break;
                    case "128":
                        case24.color="#d15b3d";
                        break;
                    case "256":
                        case24.color="#cd4b35";
                        break;
                    case "512":
                        case24.color="#c93c2d";
                        break;
                    case "1024":
                        case24.color="#c52c25";
                        break;
                    default:
                        case24.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr24
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl24
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu24
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd24
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case31
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case31
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t31.text){
                    case "":
                        case31.color="#f6dcb0";
                        break;
                    case "2":
                        case31.color="#e9b96e";
                        break;
                    case "4":
                        case31.color="#e5a965";
                        break;
                    case "8":
                        case31.color="#e1995d";
                        break;
                    case "16":
                        case31.color="#dd8a55";
                        break;
                    case "32":
                        case31.color="#d97a4d";
                        break;
                    case "64":
                        case31.color="#d56b45";
                        break;
                    case "128":
                        case31.color="#d15b3d";
                        break;
                    case "256":
                        case31.color="#cd4b35";
                        break;
                    case "512":
                        case31.color="#c93c2d";
                        break;
                    case "1024":
                        case31.color="#c52c25";
                        break;
                    default:
                        case31.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr31
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl31
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu31
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd31
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case32
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case32
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t32.text){
                    case "":
                        case32.color="#f6dcb0";
                        break;
                    case "2":
                        case32.color="#e9b96e";
                        break;
                    case "4":
                        case32.color="#e5a965";
                        break;
                    case "8":
                        case32.color="#e1995d";
                        break;
                    case "16":
                        case32.color="#dd8a55";
                        break;
                    case "32":
                        case32.color="#d97a4d";
                        break;
                    case "64":
                        case32.color="#d56b45";
                        break;
                    case "128":
                        case32.color="#d15b3d";
                        break;
                    case "256":
                        case32.color="#cd4b35";
                        break;
                    case "512":
                        case32.color="#c93c2d";
                        break;
                    case "1024":
                        case32.color="#c52c25";
                        break;
                    default:
                        case32.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr32
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl32
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu32
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd32
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case33
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case33
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t33.text){
                    case "":
                        case33.color="#f6dcb0";
                        break;
                    case "2":
                        case33.color="#e9b96e";
                        break;
                    case "4":
                        case33.color="#e5a965";
                        break;
                    case "8":
                        case33.color="#e1995d";
                        break;
                    case "16":
                        case33.color="#dd8a55";
                        break;
                    case "32":
                        case33.color="#d97a4d";
                        break;
                    case "64":
                        case33.color="#d56b45";
                        break;
                    case "128":
                        case33.color="#d15b3d";
                        break;
                    case "256":
                        case33.color="#cd4b35";
                        break;
                    case "512":
                        case33.color="#c93c2d";
                        break;
                    case "1024":
                        case33.color="#c52c25";
                        break;
                    default:
                        case33.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr33
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl33
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu33
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd33
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case34
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case34
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t34.text){
                    case "":
                        case34.color="#f6dcb0";
                        break;
                    case "2":
                        case34.color="#e9b96e";
                        break;
                    case "4":
                        case34.color="#e5a965";
                        break;
                    case "8":
                        case34.color="#e1995d";
                        break;
                    case "16":
                        case34.color="#dd8a55";
                        break;
                    case "32":
                        case34.color="#d97a4d";
                        break;
                    case "64":
                        case34.color="#d56b45";
                        break;
                    case "128":
                        case34.color="#d15b3d";
                        break;
                    case "256":
                        case34.color="#cd4b35";
                        break;
                    case "512":
                        case34.color="#c93c2d";
                        break;
                    case "1024":
                        case34.color="#c52c25";
                        break;
                    default:
                        case34.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr34
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl34
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu34
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd34
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case41
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case41
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t41.text){
                    case "":
                        case41.color="#f6dcb0";
                        break;
                    case "2":
                        case41.color="#e9b96e";
                        break;
                    case "4":
                        case41.color="#e5a965";
                        break;
                    case "8":
                        case41.color="#e1995d";
                        break;
                    case "16":
                        case41.color="#dd8a55";
                        break;
                    case "32":
                        case41.color="#d97a4d";
                        break;
                    case "64":
                        case41.color="#d56b45";
                        break;
                    case "128":
                        case41.color="#d15b3d";
                        break;
                    case "256":
                        case41.color="#cd4b35";
                        break;
                    case "512":
                        case41.color="#c93c2d";
                        break;
                    case "1024":
                        case41.color="#c52c25";
                        break;
                    default:
                        case41.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr41
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl41
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu41
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd41
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case42
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case42
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t42.text){
                    case "":
                        case42.color="#f6dcb0";
                        break;
                    case "2":
                        case42.color="#e9b96e";
                        break;
                    case "4":
                        case42.color="#e5a965";
                        break;
                    case "8":
                        case42.color="#e1995d";
                        break;
                    case "16":
                        case42.color="#dd8a55";
                        break;
                    case "32":
                        case42.color="#d97a4d";
                        break;
                    case "64":
                        case42.color="#d56b45";
                        break;
                    case "128":
                        case42.color="#d15b3d";
                        break;
                    case "256":
                        case42.color="#cd4b35";
                        break;
                    case "512":
                        case42.color="#c93c2d";
                        break;
                    case "1024":
                        case42.color="#c52c25";
                        break;
                    default:
                        case42.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr42
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl42
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu42
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd42
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case43
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case43
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t43.text){
                    case "":
                        case43.color="#f6dcb0";
                        break;
                    case "2":
                        case43.color="#e9b96e";
                        break;
                    case "4":
                        case43.color="#e5a965";
                        break;
                    case "8":
                        case43.color="#e1995d";
                        break;
                    case "16":
                        case43.color="#dd8a55";
                        break;
                    case "32":
                        case43.color="#d97a4d";
                        break;
                    case "64":
                        case43.color="#d56b45";
                        break;
                    case "128":
                        case43.color="#d15b3d";
                        break;
                    case "256":
                        case43.color="#cd4b35";
                        break;
                    case "512":
                        case43.color="#c93c2d";
                        break;
                    case "1024":
                        case43.color="#c52c25";
                        break;
                    default:
                        case43.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr43
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl43
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu43
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd43
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
        }

        Rectangle {
            id: case44
            width: 100
            height: 100
            color: "#f6dcb0"
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
                Behavior on text {
                    RotationAnimation{
                        target: case44
                        from:0;to:360
                        alwaysRunToEnd: true

                    }
                }
                onTextChanged: {
                    switch(t44.text){
                    case "":
                        case44.color="#f6dcb0";
                        break;
                    case "2":
                        case44.color="#e9b96e";
                        break;
                    case "4":
                        case44.color="#e5a965";
                        break;
                    case "8":
                        case44.color="#e1995d";
                        break;
                    case "16":
                        case44.color="#dd8a55";
                        break;
                    case "32":
                        case44.color="#d97a4d";
                        break;
                    case "64":
                        case44.color="#d56b45";
                        break;
                    case "128":
                        case44.color="#d15b3d";
                        break;
                    case "256":
                        case44.color="#cd4b35";
                        break;
                    case "512":
                        case44.color="#c93c2d";
                        break;
                    case "1024":
                        case44.color="#c52c25";
                        break;
                    default:
                        case44.color="#c21d1d";
                        break;
                    }

                }
            }
//            RotationAnimation on rotation {
//                id: animr44
//                running: button_right.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animl44
//                running: button_left.pressed
//                from:0; to:-360
//                alwaysRunToEnd: true
//            }
//            RotationAnimation on rotation {
//                id: animu44
//                running:button_up.pressed
//                from: 0; to:360
//                alwaysRunToEnd:true
//            }
//            RotationAnimation on rotation {
//                id: animd44
//                running: button_down.pressed
//                from: 0; to:-360
//                alwaysRunToEnd:true
//            }
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
        anchors.bottom: board.top
        anchors.bottomMargin: 70
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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: board.top
        anchors.bottomMargin: 0
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
                break;
            case Qt.Key_Down:
                jeu.dep_bas();
                break;
            case Qt.Key_Left:
                jeu.dep_gauche();
                break;
            case Qt.Key_Right:
                jeu.dep_droite();
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




