import QtQuick 2.0
import QtQuick.Window 2.12

Window {
    visible: true
    width: 400
    height: 400
    color: ("gray")
    title: qsTr("Analog Clock")
    Clock{
        id: id_clock
        anchors.fill: parent
    }
}
