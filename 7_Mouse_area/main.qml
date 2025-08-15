
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 100; height: 100
        color: "green"

        MouseArea {
            anchors.fill: parent
            onClicked: { parent.color = 'red' }   // if clicked the rectangle change the color to red
        }
    }

    Rectangle {
        width: 100; height: 100
        color: "green"
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton //Check first if clicked either of R/L mouse buttons
            onClicked: (mouse)=> {  // then do logic based on which button clicked
                           if (mouse.button == Qt.RightButton)
                           parent.color = 'blue';
                           else
                           parent.color = 'red';
                       }
        }
    }

    Rectangle {
        width: 200; height: 200
        color: "grey"
        anchors.centerIn: parent

        MouseArea {
            id: myMouse
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton //Check first if clicked either of R/L mouse buttons
            hoverEnabled: true      // Allow to execute all below signals in any time you just hover the mouse
            onClicked: (mouse)=> {  // then do logic based on which button clicked
                           console.log("CLicked: " + mouse.button)
                           if (mouse.button == Qt.RightButton)  parent.color = 'blue';
                           if (mouse.button == Qt.LeftButton)   parent.color = 'red';
                       }

            onDoubleClicked: console.log("Double clicked: " + mouse.button)
            onPositionChanged: console.log("Position X:" + mouseX + "& Y: " + mouseY)

        }
    }
}
