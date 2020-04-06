import QtQuick 2.0

Rectangle{
    id:rect
    x: 0
    y: 0
    width: 20
    height: 20
    color: "white"
    border.color: "black"
    radius: width/2

    MouseArea{
        anchors.fill: parent
        onClicked: {
            console.log("click- Name:", rect.name, "x,y-Coord:", parent.x, " ", parent.y);
        }
    }
}
