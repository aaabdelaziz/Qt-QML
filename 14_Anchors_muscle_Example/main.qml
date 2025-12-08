import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true


    MyShape {
        id: shareLeft
        anchors.centerIn: parent
        text: "50 Kg!! "  // This is the root text

        Rectangle {
            width: 50
            height:50
            color: "blue"
            anchors.rightMargin: parent

            // To allow the drag of blue rectangle with the full shape
            MouseArea {
                anchors.right: parent
                drag.target: parent
                onPressed: parent.z++

            }

        }

    }


    // Second Shape in Green
    MyShape {
        id: shareRight
        anchors.rightMargin: parent
        width: 100
        height:100

        text: "30 Kg!! "  // This is the root text
        anchors.left: shareLeft.right  // Anchor the left of the green Rect to the right of the Red Rect
        color: "green"

    }
}
