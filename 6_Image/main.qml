import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Write Js code here
    property int middle: height/2

    // If any typos or mistake written in image QMl, it may compile and don't show the image
    Image {
        id: localImage
        source: "qrc:/Images/smile_face.jpg"
        width: 200
        fillMode: Image.PreserveAspectFit  // Keep aspect rations

        x: 100
        y: middle - 100
    }

    Image {
        id: remoteImage
        source: "https://as1.ftcdn.net/v2/jpg/02/95/26/46/1000_F_295264675_clwKZxogAhxLS9sD163Tgkz1WMHsq1RJ.jpg"
        width: 200
        fillMode: Image.PreserveAspectFit  // Keep aspect rations

        x: 400
        y: middle

        onProgressChanged: console.log("RemoteImage.progress")
        onStatusChanged: if(remoteImage.status == Image.Ready) console.log("Remote image was loaded")   // Check if the image is loaded from remote website
    }


}
