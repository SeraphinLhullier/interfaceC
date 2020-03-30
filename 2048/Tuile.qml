import QtQuick 2.0

Item {
    width: 50
    height: 50
    property alias elementText: element.text

    Rectangle {
        id: rectangle
        color: "#8f5902"
        anchors.fill: parent

        Text {
            id: element
            width: 100
            height: 100
            color: "#f6dcb0"
            text: qsTr("")
            font.bold: true
            textFormat: Text.AutoText
            lineHeight: 1
            fontSizeMode: Text.FixedSize
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 22
        }
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:31;anchors_y:21}
}
##^##*/
