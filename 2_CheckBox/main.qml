import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    CheckBox
    {
        id: myCheckBox
        checked: true
        anchors.centerIn: parent
        width: 400
        height: 100


        Text
        {
            id: myCheckBoxText
            text: "Select Option"
            font.pointSize: 15
            font.bold: true
            color: "#e74c3c"
            x: ((myCheckBoxindicator.x + myCheckBoxindicator.width) + 15)
            y: ((myCheckBox.height - myCheckBoxindicator.height) / 2) + 15
        }


        onCheckedChanged:
        {
            console.log("CheckBox Status: " + checked)
            console.log(((myCheckBox.height - mycheckBoxindicator.height) / 2))

        }

        // Rectangle specs
        background: Rectangle
        {
            border.width: 5
            radius: 15
            border.color: "#e67e22"              // Orange

        }

        // Check Box specifications
        indicator: Rectangle
        {
            id: myCheckBoxindicator
            implicitWidth: 50
            implicitHeight: 50
            radius: 15
            border.color: "#3498db"             // Blue
            border.width: 3
            x: 10
            y: ((myCheckBox.height - myCheckBoxindicator.height) / 2)

            Rectangle
            {
                visible: myCheckBox.checked
                color: "#27ae60"                // Green
                border.color: "#e67e22"         // Orange
                radius: 5
                anchors.margins: 10
                anchors.fill: parent
            }
        }


    }
}
