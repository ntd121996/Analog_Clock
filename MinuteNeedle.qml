import QtQuick 2.0

Item {
    id: id_Root
    property int minutesValue: 0
    property int granularity: 60
    antialiasing: true
    rotation: 360/granularity * (minutesValue % granularity)

    Rectangle{
        width: 3
        height:id_Root.height * 0.3
        color: qsTr("yellow")
        anchors{
            horizontalCenter: id_Root.horizontalCenter
            bottom: id_Root.verticalCenter
        }
        antialiasing: true

    }
}
