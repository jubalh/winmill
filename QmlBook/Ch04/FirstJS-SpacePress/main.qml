import QtQuick 2.6
import QtQuick.Window 2.2

Text {
    anchors.fill: parent
    focus: true

    property int spacePresses

    text: spacePresses + " times space pressed"

    Keys.onEscapePressed: Qt.quit()
    Keys.onSpacePressed: spacePressed()
    Keys.onEnterPressed: {
        spacePresses = 0
    }

    function spacePressed() {
        spacePresses += 1
    }
}
