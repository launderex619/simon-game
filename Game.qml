import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import "SimonGameController.js" as GameController

Item {
    width: 480
    height: 500
    visible: true
    property var gameController: GameController

    function initializeGameController() {
        gameController.constructor(greenBtn, yellowBtn, redBtn, blueBtn, btnAnimation);
    }

    FontLoader {
        id: glacialIndifferenceBold;
        name: qsTr("Glacial Indifference bold")
        source: "font/glacial-indifference/GlacialIndifference-Bold.otf"}

    Text {
        id: txtTitle
        x: 3
        y: 8
        width: 476
        height: 61
        color: "#5a6bf6"
        text: qsTr("SIMON")
        font.letterSpacing: -7.5
        font.pixelSize: 53
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        styleColor: "#606ee2"
        style: Text.Outline
        font.family: glacialIndifferenceBold.name
        font.bold: false
    }


    RotationAnimation {
        id: btnAnimation
        target: NULL
        from: 0
        to: 360
        duration: 500
    }

    function showAnimation() {
        console.log (gameController.movements.length);
        timer.counter = 0;
        timer.start()
//        for (let i = 0; i < gameController.movements.length; i++){
//            animate(gameController.movements[i]);
//        }
    }

    Timer {
        id: timer
        property var counter: 0
        running: false
        repeat: true
        onTriggered: {
            if (counter >= gameController.movements.length-1) {
                timer.stop();
            }
            animate(gameController.movements[counter]);
            counter++;
        }
    }

    function animate(button) {
        if (button === gameController.BLUE) {
            btnAnimation.target = blueBtn;
        } else if (button === gameController.RED) {
            btnAnimation.target = redBtn;
        } else if (button === gameController.YELLOW) {
            btnAnimation.target = yellowBtn;
        } else if (button === gameController.GREEN) {
            btnAnimation.target = greenBtn;
        }
        btnAnimation.start();

    }

    Button {
        id: greenBtn
        x: 151
        y: 142
        width: 87
        height: 83
        text: qsTr("")
        palette.button: "#36c08f"
        onClicked: {
            gameController.addMovement(gameController.GREEN)
        }
    }

    Button {
        id: yellowBtn
        x: 241
        y: 142
        width: 87
        height: 83
        text: qsTr("")
        palette.button: "#ffc425"
        onClicked: {
            gameController.addMovement(gameController.YELLOW)
        }
    }

    Button {
        id: redBtn
        x: 150
        y: 228
        width: 87
        height: 83
        text: qsTr("")
        palette.button: "#ff0033"
        onClicked: {
            gameController.addMovement(gameController.RED)
        }
    }

    Button {
        id: blueBtn
        x: 240
        y: 228
        width: 87
        height: 83
        text: qsTr("")
        palette.button: "#00a5e6"
        onClicked: {
            gameController.addMovement(gameController.BLUE)
        }
    }

    Text {
        id: text1
        x: 42
        y: 81
        width: 117
        height: 19
        text: qsTr("Player 1")
        font.pixelSize: 15
    }

    Text {
        id: text3
        x: 41
        y: 104
        width: 117
        height: 19
        text: qsTr("Player 2")
        font.pixelSize: 15
    }

    Text {
        id: text4
        x: 40
        y: 123
        width: 117
        height: 19
        text: qsTr("Player 3")
        font.pixelSize: 15
    }

    Text {
        id: text5
        x: 39
        y: 146
        width: 117
        height: 19
        text: qsTr("Player 4")
        font.pixelSize: 15
    }

    RoundButton {
        id: roundButton1
        x: 24
        y: 85
        width: 12
        height: 12
        font.styleName: "Regular"
        palette.button: "#008000"

    }
    RoundButton {
        id: button5
        palette.button: "#36c08f"
        x: 322
        y: 453
        width: 150
        height: 39
        text: "<font color='#FFFFFF'>" + "Salir" + "</font>"
        font.letterSpacing: -1
        font.pointSize: 20
        font.family: glacialIndifferenceRegular.name
        onClicked: mainStackView.pop()
    }

    RoundButton {
        id: roundButton2
        x: 24
        y: 104
        width: 12
        height: 12
        palette.button: "#008000"
        font.styleName: "Regular"
    }

    RoundButton {
        id: roundButton3
        x: 24
        y: 125
        width: 12
        height: 12
        palette.button: "#008000"
        font.styleName: "Regular"
    }

    RoundButton {
        id: roundButton4
        x: 25
        y: 144
        width: 12
        height: 12
        palette.button: "#008000"
        font.styleName: "Regular"
    }

    TextField {
        id: textField
        x: 8
        y: 453
        placeholderText: qsTr("Escribe un mensaje...")
    }

    RoundButton {
        id: roundButton
        x: 214
        y: 453
        text: "<font color='#FFFFFF'>" +  "\u2713" + "</font>"
        palette.button: "#36c08f"
    }

    ScrollView {
        id: scrollView
        x: 8
        y: 360
        width: 246
        height: 87
    }

    Text {
        id: text2
        x: 355
        y: 81
        width: 117
        height: 19
        text: qsTr("Sala: ")
        font.pixelSize: 15
    }

    RoundButton {
        id: roundButton5
        x: 394
        y: 235
        text: "+"
        onClicked: {
            showAnimation()
            console.log( btnAnimation.target )
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.8999999761581421}
}
##^##*/
