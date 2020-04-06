import QtQuick 2.0
import sim.game 1.0

Rectangle{
    //Welche Punkte werden verbunden?
    property int from
    property int to
    antialiasing: true
    color: "white"
    height: 6
    width: 100
    transformOrigin: Item.Left
}
