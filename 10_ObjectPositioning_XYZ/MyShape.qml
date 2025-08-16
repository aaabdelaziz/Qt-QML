import QtQuick 2.15

Rectangle {
    id: myShape
    width: 100
    height: 100
    color: "green"


    // Make it draggable
    MouseArea {
        id: dragArea
        anchors.fill: parent
        drag.target: myShape
        onClicked: parent.z++   // If the shape is clicked it will be with higher z axes, become on top of other shapes

        // Update label while dragging
        onPositionChanged: {
            positionLabel.text = Math.round(myShape.x) + " x " + Math.round(myShape.y)
        }
    }
}
