import QtQuick 2.0
import sim.game 1.0

Item {
    id: element1
    Game{
        id:game
    }

    Rectangle {
        id: rectangle
        color: "#89f7fe"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#434343"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        Item {
            id: element
            x: 100
            y: 113
            width: 400
            height: 400
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                id:globalMouseArea
                anchors.fill: parent
                hoverEnabled: false;
            }

            Line {
                id: line0
                from:1
                to:2
                x: 201
                y: 48
                width: 160
                height: ma0.containsMouse?10:6
                rotation: 28
                MouseArea{
                    id:ma0
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line1
                x: 57
                y: 272
                width: 160
                height: ma1.containsMouse?10:6
                to: 5
                from: 4
                rotation: 28
                MouseArea{
                    id:ma1
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line2
                x: 59
                y: 118
                width: 160
                height: ma2.containsMouse?10:6
                from: 5
                to: 6
                rotation: 90
                MouseArea{
                    id:ma2
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line3
                x: 341
                y: 118
                width: 160
                height: ma3.containsMouse?10:6
                to: 3
                from: 2
                rotation: 90
                MouseArea{
                    id:ma3
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line4
                x: 199
                y: 48
                width: 160
                height: ma4.containsMouse?10:6
                to: 6
                from: 1
                anchors.top: line0.top
                rotation: 152
                MouseArea{
                    id:ma4
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line5
                x: 342
                y: 272
                width: 160
                height: ma5.containsMouse?10:6
                to: 4
                from: 3
                anchors.top: line1.top
                rotation: 152
                MouseArea{
                    id:ma5
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line6
                x: 200
                y: 199
                width: 300
                height: ma6.containsMouse?10:6
                to: 4
                from: 1
                anchors.topMargin: 151
                transformOrigin: Item.Center
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: line0.top
                rotation: 90
                MouseArea{
                    id:ma6
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line7
                x: 59
                y: 271
                width: 320
                height: ma7.containsMouse?10:6
                to: 5
                from: 2
                rotation: -28
                MouseArea{
                    id:ma7
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line8
                x: 200
                y: 47
                width: 270
                height: ma8.containsMouse?10:6
                to: 3
                from: 1
                rotation: 58
                MouseArea{
                    id:ma8
                    width: 270
                    anchors.bottomMargin: -5
                    anchors.topMargin: -5
                    anchors.bottom: parent.bottom
                    anchors.top: parent.top
                    hoverEnabled: true;
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }

                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line9
                x: 63
                y: 122
                width: 270
                height: ma9.containsMouse?10:6
                to: 6
                from: 2
                MouseArea{
                    id:ma9
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line10
                x: 63
                y: 272
                width: 270
                height: ma10.containsMouse?10:6
                from: 3
                to: 5
                MouseArea{
                    id:ma10
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line11
                x: 58
                y: 120
                width: 270
                height: ma11.containsMouse?10:6
                from: 6
                to: 4
                rotation: 58
                MouseArea{
                    id:ma11
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line12
                x: 58
                y: 121
                width: 320
                height: ma12.containsMouse?10:6
                to: 6
                from: 3
                rotation: 28
                MouseArea{
                    id:ma12
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }


            Line {
                id: line13
                x: 58
                y: 276
                width: 270
                height: ma13.containsMouse?10:6
                to: 5
                from: 1
                rotation: -58
                MouseArea{
                    id:ma13
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Line {
                id: line14
                x: 200
                y: 350
                width: 270
                height: ma14.containsMouse?10:6
                to: 4
                from: 2
                rotation: -58
                MouseArea{
                    id:ma14
                    anchors.fill: parent
                    scale: 1.5
                    onClicked: {
                        if(game.selectEdge(parent.from-1, parent.to-1)){
                            parent.color=game.currentColor;
                            if(game.checkWin())
                            {
                                console.log("!!!!!!!!!!!!!!!GEWONNEN!!!!!!!!")
                                lostRect.visible = true;
                            }
                            game.nextPlayer();
                        }
                    }
                    readonly property bool containsMouse: {
                        var relativePos = mapFromItem(globalMouseArea, globalMouseArea.mouseX, globalMouseArea.mouseY);
                        return contains(Qt.point(relativePos.x, relativePos.y));
                    }
                }
            }

            Punkt {
                id: punkt1
                x: 190
                y: 59
                anchors.verticalCenterOffset: -150
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Punkt {
                id: punkt2
                x: 199
                y: 52
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 141
                anchors.verticalCenterOffset: -75
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Punkt {
                id: punkt3
                x: 199
                y: 49
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 141
                anchors.verticalCenterOffset: 75
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Punkt {
                id: punkt4
                x: 185
                y: 63
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: 150
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Punkt {
                id: punkt5
                x: 190
                y: 53
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: -141
                anchors.verticalCenterOffset: 75
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Punkt {
                id: punkt6
                x: 191
                y: 59
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: -141
                anchors.verticalCenterOffset: -75
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
    Rectangle {
        id: lostRect
        x: 93
        y: 100
        width: 372
        height: 62
        color: "#ffffff"
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: lostText
            x: 174
            y: 24
            text: qsTr("Starttext")
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            transformOrigin: Item.Center
            font.pixelSize: 25
        }
        onVisibleChanged: {
            lostText.text = qsTr(game.currentPlayer + " hat verloren!")
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                game.reset();
                lostRect.visible = false;
                line0.color = "white";
                line1.color = "white";
                line2.color = "white";
                line3.color = "white";
                line4.color = "white";
                line5.color = "white";
                line6.color = "white";
                line7.color = "white";
                line8.color = "white";
                line9.color = "white";
                line10.color = "white";
                line11.color = "white";
                line12.color = "white";
                line13.color = "white";
                line14.color = "white";
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:800;width:400}D{i:1;anchors_height:200;anchors_width:200;anchors_x:137;anchors_y:141}
D{i:8;anchors_y:59}D{i:25;anchors_height:20;anchors_width:270;anchors_y:59}D{i:24;anchors_y:59}
D{i:26;anchors_y:59}D{i:6;anchors_y:59}D{i:5;anchors_y:113}
}
##^##*/
