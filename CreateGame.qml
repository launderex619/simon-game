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

        Text {
            id: text2
            x: 20
            y: 9
            width: 190
            height: 39
            text: qsTr("x4563")
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
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
        text: qsTr("Crear tu partida")
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
        x: 131
        y: 155
        text: qsTr("ID para compartir:")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: glacialIndifferenceRegular.name
    }
    RoundButton {
        id: roundButton
        x: 343
        y: 214
        palette.button: "#36c08f"
        text: "<font color='#FFFFFF'>" +  "\u2713" + "</font>"
        onClicked: mainStackView.push(lobby)
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
