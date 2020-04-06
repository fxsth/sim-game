import QtQuick 2.12
import QtQuick.Shapes 1.14
import QtQuick.Window 2.12
import QtQuick.Controls 2.13
import QtQuick.Extras 1.4
import QtQml.Models 2.2
import sim.game 1.0

Window {
    id: window
    visible: true
    width: 400
    height: 400
    color: "#2e2e2e"
    title: qsTr("Sim (Spiel)")

    Graph{ anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter}
}
