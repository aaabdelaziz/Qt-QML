
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: myItem
        anchors.centerIn: parent
        color: "blue"
        height: 300
        width: 300
        visible: true

        border.color: "black"
        border.width: 4

        radius: width   // will turn the rectangle to circle
        //radius: 30

        // Gardienets
        gradient: Gradient {
            GradientStop { position: 0.0; color: "red" }
            GradientStop { position: 0.5; color: "blue" }   // Start the blue at position 0.5 from top shape then blue
        }
    }
}
