import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    width: 360
    height: 360
    visible: true
    Text {
        anchors.centerIn: parent
        text: "Hello World"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit()
        }
    }
}
