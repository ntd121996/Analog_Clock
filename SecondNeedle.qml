import QtQuick 2.0

Item {
    id: id_Root
    property int secondsValue: 0
    property int granularity: 60
    antialiasing: true
    rotation: 360/granularity * secondsValue

    Rectangle{
        width: 1
        height:id_Root.height * 0.4
        color: qsTr("black")
        anchors{
            horizontalCenter: id_Root.horizontalCenter
            bottom: id_Root.verticalCenter
        }
        antialiasing: true

    }
}
