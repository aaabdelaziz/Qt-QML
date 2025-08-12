import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Button{
        id: myButton
        width: 200
        height: 100
        anchors.centerIn: parent


        Text {
            id: myButtonText
            text: qsTr("ClickMe")
            color: "white"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
            font.pointSize: 20
            font.bold: true
        }

        onClicked:
        {
            console.log("Button is clicked")
        }

        background: Rectangle
        {
            color: myButton.pressed ? "blue" : "grey"
            radius: 5
        }
    }

}
