import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Item {
    width: 480
    height: 500
    visible: true


    Rectangle {
        id: rectangle
        x: 86
        y: 206
        width: 233
        height: 56
        color: "#d9d9d9"
        radius: 30


        TextInput {
            id: textInput
            x: 16
            y: 15
            width: 201
            height: 26
            font.pixelSize: 25
            verticalAlignment: Text.AlignVCenter
            font.underline: false
            cursorVisible: true
            maximumLength: 14
            font.family: glacialIndifferenceRegular.name
        }
    }

    FontLoader {
        id: glacialIndifferenceBold;
        name: qsTr("Glacial Indifference bold")
        source: "font/glacial-indifference/GlacialIndifference-Bold.otf"
    }

    FontLoader {
        id: glacialIndifferenceRegular;
        name: "Glacial Indifference regular"
        source: "font/glacial-indifference/GlacialIndifference-Regular.otf"
    }

    Text {
        id: txtTitle
        x: 92
        y: 33
        width: 297
        height: 126
        color: "#5a6bf6"
        text: qsTr("UNIRME A PARTIDA")
        font.letterSpacing: 0
        font.pixelSize: 45
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        styleColor: "#606ee2"
        style: Text.Outline
        font.family: glacialIndifferenceBold.name
        font.bold: false
    }
    Text {
        id: text1
        x: 173
        y: 151
        text: qsTr("Ingresa el ID:")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: glacialIndifferenceRegular.name
    }
    RoundButton {
        id: roundButton
        x: 343
        y: 214
        text: "<font color='#FFFFFF'>✓</font>"
        palette.button: "#36c08f"
        onClicked: mainStackView.push(game)
    }

    RoundButton {
        id: button3
        palette.button: "#36c08f"
        x: 310
        y: 442
        width: 150
        height: 39
        text: "<font color='#FFFFFF'>" + "Salir" + "</font>"
        font.letterSpacing: -1
        font.pointSize: 20
        font.family: glacialIndifferenceRegular.name
        onClicked: mainStackView.pop()
    }
}
