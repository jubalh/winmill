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
    }
}
