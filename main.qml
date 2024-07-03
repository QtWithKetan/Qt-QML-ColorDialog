import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")  

    Column
    {
        Button
        {
            id:myButton
            text:"Click Me.."
            onClicked:
            {
                myColorDialog.open()
            }
        }
        Rectangle
        {
            id:myRect
            width: 200
            height: 200
        }
    }

    ColorDialog
    {
        id:myColorDialog
        title: "Select the color ... "
        onAccepted:
        {
            myRect.color = myColorDialog.color
        }
    }
}
