import QtQuick 2.0

Item {
    width: 50
    height: 50
    property alias rectangleColor: rectangle.color
    property alias elementText: element.text

    Rectangle {
        id: rectangle
        color: "#e9b96e"
        anchors.fill: parent

        Text {
            id: element
            width: 100
            height: 100
            color: "#f6dcb0"
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
