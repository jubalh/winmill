import QtQuick 2.6
import QtQuick.Window 2.3

Window {
    id: root
    visible: true
    width: background.width
    height: background.height

    Image {
        id: background
        source: "images/background.png"

        Image {
            id: pole
            source: "images/pole.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
        }

        Image {
            id: wheel
            source: "images/pinwheel.png"
            anchors.centerIn: parent
        }
    }
}
