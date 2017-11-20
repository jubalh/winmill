import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: image.width
    height: image.height + 15 + rect1.height
    title: qsTr("Hello World")
    Image {
        id: image
        source: "http://iodoru.org/netbsd.png"
    }

    Rectangle {
        id: rect1
        x: 12; y: image.height + 12
        width: 76; height: 96
        color: "lightsteelblue"
        MouseArea {
            id: area
            width: parent.width
            height: parent.height
            onClicked: rect2.visible = !rect2.visible
        }
    }

    Rectangle {
            id: rect2
            x: 112; y: image.height + 12
            width: 76; height: 96
            border.color: "lightsteelblue"
            border.width: 4
            radius: 8
        }

}
