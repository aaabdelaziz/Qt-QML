import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true

    MyShape {
        id: shareCenteral
        anchors.centerIn: parent
        text: "I'm Here :) !! "

        Rectangle {
            width: 20
            height:25
            color: "blue"
            anchors.centerIn: parent

            // To allow the drag of blue rectangle with the full shape
            MouseArea {
                anchors.fill: parent
                drag.target: parent
                onPressed: parent.z++

            }

        }

    }
}
