import QtQuick 2.0
import QtQuick.Shapes 1.12



Rectangle{
    id:rect
    property int endX
    property int endY
    antialiasing: true
    color: "white"
    width: Math.sqrt((endX-x)*(endX-x)+(endY-y)*(endY-y))
    height: 4
    transformOrigin: Item.Left
    rotation: 90+Math.abs(Math.atan((endX-x)/(endY-y))*180/Math.PI)
    MouseArea{
        anchors.fill: rect
        onClicked: {
            console.log("click", rect.x, rect.y, "rotation:", rect.rotation);
            rect.color="red"
        }
    }
}

/*Item {
    width: 100; height: 100


    Component {
        id: redSquare

        Rectangle {
            color: "red"
            width: 10
            height: 10
        }
    }

    Loader { sourceComponent: redSquare }
    Loader { sourceComponent: redSquare; x: 20 }
}
    ShapePath{
        property var start: Qt.point(0,0)
        property var end: Qt.point(100,100)
        property var aColor: "white"
        id:firstLine
        strokeColor: aColor
        strokeWidth: 4
        fillColor: "transparent"
        capStyle: ShapePath.RoundCap
        startX: start.x
        startY: start.y
        PathLine{
            x:end.x
            y:end.y
            MouseArea{
               onClicked: aColor = "red"
            }
        }
    }
*/
