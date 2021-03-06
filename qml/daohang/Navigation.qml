import QtQuick 2.0


Rectangle{
    id:rectangleNavigation
    width: parent.width
    height: parent.height
    color: "#11ffaa"

    //  回调函数
    signal changeItem(int position)

    Row {
        width: parent.width
        height: parent.height

        Rectangle{
            id:rectangleRoom
            width: parent.width/2
            height: parent.height
            color: "#aaff00"

            Column{
                width: 100
                height: parent.height
                anchors.centerIn: parent
                Image {
                    source: "qrc:/img_room.png"
                    width: 50
                    height: 50
                    anchors.topMargin: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: qsTr("房间")
                    anchors.topMargin: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    font: font.pixelSize=15
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {

                    rectangleNavigation.changeItem(0)
                }

                onEntered: {
                    rectangleRoom.color="#ff0055"
                }

                onExited: {
                    rectangleRoom.color="#aaff00"
                }
            }
        }

        Rectangle{
            id:rectangleBuddy
            width: parent.width/2
            height: parent.height
            color: "#00ffaa"
            Column{
                anchors.centerIn: parent
                width: 100
                height: parent.height
                Image {
                    source: "qrc:/img_buddy.png"
                    width: 50
                    height: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 25
                }
                Text {
                    text: qsTr("好友")
                    anchors.topMargin: 25
                    font: font.pixelSize=15
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    rectangleNavigation.changeItem(1)
                }
                onEntered: {
                    rectangleBuddy.color="#ff0055"
                }
                onExited: {
                    rectangleBuddy.color="#aaff00"
                }
            }
        }
    }
}
