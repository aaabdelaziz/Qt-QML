
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: myText1
        text: qsTr("<html>
                        <b>Hi Here</b>
                        <i><font color='green'>How are you doing!</font></i>
                    </html>")
        anchors.centerIn: parent
        font.pointSize: 35
        font.bold: true
        font.italic: false
    }


    Text {
        id: myText2
        text: qsTr("<br>
                    <font color='#C0C0C0'> this is some text</font>
                    <a href='www.google.com'>my link here</a>
                    </br>")
        anchors.centerIn: parent
        font.pointSize: 35
        font.bold: true
        font.italic: false
        color: "red"
        linkColor: blue
        //When hover ove the text make some effect, change the font to bold
        onLinkHovered: {
            console.log("Hover" + link)
            if(link)
            {
                myText2.font.bold = true
                myText2.font.color = "green"

            }
            else
            {
                myText2.font.bold = false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)
    }

}
