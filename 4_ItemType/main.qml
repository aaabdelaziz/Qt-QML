import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item
    {
        id: myItem
        anchors.centerIn: parent   // Put the Item in the center of the parent which is the window
        height: 100
        width: 100


        Rectangle
        {
            id:myRectangle
            color: "red"
            anchors.fill: parent    // Fill the parent container with the rectangle shape
        }
    }
}
