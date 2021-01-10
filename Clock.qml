import QtQuick 2.0

Item {
    id: id_root
    property color color: "#fd7400"
    property int hours: currentDate.getHours()
    property int minutes: currentDate.getMinutes()
    property int seconds: currentDate.getSeconds()
    property date currentDate: new Date()

    Timer{
        id:id_Timer
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            currentDate = new Date()
        }
    }



    Rectangle{
        id: id_Plate
        anchors.centerIn: parent
        height: Math.min(id_root.width, id_root.height)
        width: height
        color: id_root.color
        radius: width/2
        border.color: qsTr("#000100")
        border.width: 4

        Repeater {
            model: 12

            Item {
                id: hourContainer

                property int hour: index
                height: id_Plate.height/2
                transformOrigin: Item.Bottom
                rotation: index * 30
                x: id_Plate.width/2
                y: 0

                Rectangle {
                    height: id_Plate.height*0.05
                    width: height
                    radius: width/2
                    color: "black"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 4
                }

                Text {
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                    }
                    x: 0
                    y: id_Plate.height*0.06
                    rotation: 360 - index * 30
                    text: hourContainer.hour == 0 ? 12 : hourContainer.hour
                    font.pixelSize: id_Plate.height*0.1
                    font.family: "Comic Sans MS"
                }
            }
        }
    }

    Rectangle{
        id: id_middleCircle
        anchors.centerIn: id_Plate
        width:id_Plate.width*0.05
        height:width
        radius: width/2
        color: qsTr("black")
    }
    HourNeedle{
        anchors {
            top: id_Plate.top
            bottom: id_Plate.bottom
            horizontalCenter: parent.horizontalCenter
        }
        hoursValue: hours
        minutesValue: minutes
    }
    MinuteNeedle{
        anchors {
            top: id_Plate.top
            bottom: id_Plate.bottom
            horizontalCenter: parent.horizontalCenter
        }

        minutesValue: minutes
    }
    SecondNeedle{
        anchors {
            top: id_Plate.top
            bottom: id_Plate.bottom
            horizontalCenter: parent.horizontalCenter
        }
        secondsValue: seconds
    }


}
