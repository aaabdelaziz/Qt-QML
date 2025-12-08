import QtQuick 2.15

Item {

    id: root
    property color color: "red"               // Define global item property as color
    property string text: "Shape Title:"      // Define global item property as string
    width: 200
    height: 200

    Rectangle {
        color: root.color
        anchors.fill: parent

        Text {
            text: root.text
        }


        // To allow the drag of the whole Big Red rectangle along with its elements
        MouseArea {
            anchors.fill: parent
            drag.target: root.parent
            // onPressed: parent.z++    // Note if uncomment this what will happen for the blue rectangle

        }


    }

}
