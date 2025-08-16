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
        onClicked: parent.z++

        // Update label while dragging
        onPositionChanged: {
            positionLabel.text = Math.round(myShape.x) + " x " + Math.round(myShape.y)
        }
    }
}
