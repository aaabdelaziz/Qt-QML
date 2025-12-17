import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true

    Rectangle
    {
        anchors.centerIn: parent
        width: 400
        height: 500
        color: "blue"

        // Creating rectangle inside rectangle with margin
        Rectangle
        {
            anchors.centerIn: parent
            width: 50
            height: 60
            color: "red"


            // No anchors by default, so set it, otherwise, this red rect will appear at 0,0 position
            anchors.margins: 30
            anchors.left:  parent.left // Set the left of Blue Rect to be 60 Pixels from the left of big Red Rect
            anchors.bottom:  parent.bottom // Set the bottom of Blue Rect to be 60 Pixels from the bottom of big Red Rect
            anchors.leftMargin: 15  // This will overwrite the defualt left margin to be 15 instead of 60
            //Note: If there is no left margin setted, the margins will not be setted as well.
        }

    }
}
