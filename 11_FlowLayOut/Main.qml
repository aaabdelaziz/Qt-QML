// main.qml

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15 // Import Flow
import "." // Import MyShape component

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flow Layout Exercise")
    id: root

    Rectangle{
        color: "pink"
        id: myshap
        anchors.fill: parent // Use anchors.fill instead of fixed width/height for better resizing
        clip: false // Play with this: true cuts off children outside this Rectangle's bounds

        Flow {
            // Anchor the flow item in the center of the pink rectangle
            anchors.centerIn: parent
            width: parent.width // Give it the full width to allow flow/wrapping

            flow: Flow.LeftToRight // Items flow left-to-right, then wrap down
            // flow: Flow.TopToBottom // Items flow top-to-bottom, then wrap right
            spacing: 5

            // Components will be arranged by the Flow layout
            MyShape{color: "blue"; radius: 10}
            MyShape{color: "yellow"}
            MyShape{color: "red"}
            MyShape{color: "blue"; radius: 40}
            MyShape{color: "orange"; radius: 10}
            MyShape{color: "black"; radius: 60}
            MyShape{color: "grey"}
            MyShape{color: "cyan"}
            MyShape{color: "magenta"; radius: 20}
            MyShape{color: "darkgreen"; radius: 5}

        }
    }
}
