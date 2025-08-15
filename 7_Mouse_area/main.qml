
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

    // Rectangle {
    //     width: 400; height: 400
    //     x: 300
    //     y: 300

    //     MouseArea {
    //         id: mouseArea1
    //         anchors.fill: parent
    //         hoverEnabled: true
    //     }
    //     MouseArea {
    //         id: mouseArea2
    //         width: 100; height: 100
    //         anchors.centerIn: parent
    //         hoverEnabled: true
    //     }
    // }
}
