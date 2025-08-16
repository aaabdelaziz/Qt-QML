
import QtQuick 2.15
import QtQuick.Window 2.1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var middle: (height/2) - 50

    // NOTE THAT: the Item custome type name in QML should start by Capital letter
    MyButton {
        x: (parent.width/4)
        y: middle
        color:  "red"
        colorClicked: "green"
        title: "Button_1"
    }

    MyButton {
        x: (parent.width/4) + 120
        y: middle
        color:  "orange"
        colorClicked: "green"
        title: "<font b>Button_2</b>"
    }

    MyButton {
        x: (parent.width/4) + 240
        y: middle
        color:  "lightblue"
        colorClicked: "green"
        title: "Button_3<br> Testing!"
    }

}
