import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Drag Position Tracker")

    Rectangle {
        id: myShape
        width: 100
        height: 100
        color: "orange"
        x: 150
        y: 100

        // Label inside the rectangle to show x, y
        Text {
            id: positionLabel
            anchors.centerIn: parent
            text: "x: " + Math.round(myShape.x) + " y: " + Math.round(myShape.y)
        }

        // Make it draggable
        MouseArea {
            id: dragArea
            anchors.fill: parent
            drag.target: myShape

            // Update label while dragging
            onPositionChanged: {
                positionLabel.text = "x: " + Math.round(myShape.x) + " y: " + Math.round(myShape.y)
            }
        }
    }
}
