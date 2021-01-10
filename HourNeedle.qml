import QtQuick 2.0

Item {
    id: id_Root
    property int hoursValue
    property int minutesValue
    property int granularity: 12
    antialiasing: true
    rotation: 360/granularity * (hoursValue % granularity) + 360/granularity * (minutesValue/60)

    Rectangle{
        width: 5
        height:id_Root.height * 0.2
        color: qsTr("red")
        anchors{
            horizontalCenter: id_Root.horizontalCenter
            bottom: id_Root.verticalCenter
        }
        antialiasing: true

    }
}
