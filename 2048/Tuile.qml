import QtQuick 2.2

Rectangle {
    id: tuile
    width: 425/4
    height: 425/4
    radius: 3
    color: "white"
    property string tuileText: ""
    property int tileFontSize: 55
    property color tileColor: "black"
    property int moveAnimTime: 100
    property int newTileAnimTime: 200
    property bool runNewTileAnim: false
    property bool destroyFlag: false


    Text {
        id: tileLabel
        text: tuileText
        color: tileColor
        font.family: localFont.name
        font.pixelSize: tileFontSize
        font.bold: true
        anchors.centerIn: parent
        Behavior on text {
            PropertyAnimation { target: tuile
                property: "opacity"
                from: 0.5
                to: 1
                duration: moveAnimTime
            }
        }
    }

    ParallelAnimation {
        running: runNewTileAnim
        NumberAnimation {
            target: tuile
            property: "opacity"
            from: 0.0
            to: 1.0
            duration: newTileAnimTime
        }

        ScaleAnimator {
            target: tuile
            from: 0
            to: 1
            duration: newTileAnimTime
            easing.type: Easing.OutQuad
        }
    }

    Behavior on color {
        ColorAnimation {
            duration: moveAnimTime
        }
    }

    Behavior on y {
        NumberAnimation {
            duration: moveAnimTime
            onRunningChanged: {
                if ((!running) && destroyFlag) {
                    tuile.destroy();
                }
            }
        }
    }

    Behavior on x {
        NumberAnimation {
            duration: moveAnimTime
            onRunningChanged: {
                if ((!running) && destroyFlag) {
                    tuile.destroy();
                }
            }
        }
    }
}
