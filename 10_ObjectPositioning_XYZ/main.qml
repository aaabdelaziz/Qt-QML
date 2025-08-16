import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    // property var midX: width/2
    // property var midY: height/2

    // MyShape{
    //     color: "blue"
    //     x: midX - (width/2)
    //     y: midY - (height/2) - 40
    // }

    // MyShape{
    //     color: "red"
    //     x: midX - (width/2) - 55
    //     y: midY - (height/2) + 30

    // }

    // MyShape{
    //     color: "orange"
    //     x: midX - (width/2) + 55
    //     y: midY - (height/2) + 30
    // }

    // // Create Column of Shapes
    // Column
    // {
    //     anchors.left: parent
    //     spacing: 5
    //     MyShape{color: "blue"}
    //     MyShape{color: "green"}
    //     MyShape{color: "red"}
    // }

    // // Create Rows of Shapes
    // Row
    // {
    //     anchors.right: parent
    //     spacing: 5
    //     MyShape{color: "blue"}
    //     MyShape{color: "green"}
    //     MyShape{color: "red"}
    // }


    // Create Gride of Shapes
    Grid
    {
        anchors.centerIn: parent
        spacing: 5
        rows: 3
        columns: 2

        MyShape{color: "blue"; radius: 10}
        MyShape{color: "yellow"}
        MyShape{color: "red"}
        MyShape{color: "blue"; radius: 40}
        MyShape{color: "orange"; radius: 10}
        MyShape{color: "black"; radius: 60}
        MyShape{color: "grey"}

    }


}
