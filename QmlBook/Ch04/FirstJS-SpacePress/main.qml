import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true

    Text {
        id: text
        anchors.fill: parent
        focus: true

        property int spacePresses: 0

        text: spacePresses + " times space pressed"

        Keys.onEscapePressed: Qt.quit()
        Keys.onSpacePressed: spacePressed()
        Keys.onEnterPressed: {
            console.log("Enter pressed")
            spacePresses = 0
        }

        function spacePressed() {
            spacePresses += 1
        }
    }

    Rectangle {
        border.color: '#FF4444'
        border.width: 30
        radius: 6
        x: 20
        y: text.y + text.lineHeight + 20
        width: 50
        height: 50
    }
}
