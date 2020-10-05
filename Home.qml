import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Item {
    width: 480
    height: 500
    visible: true

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
        text: qsTr("SIMON")
        font.letterSpacing: -7.5
        font.pixelSize: 75
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        styleColor: "#606ee2"
        style: Text.Outline
        font.family: glacialIndifferenceBold.name
        font.bold: false
    }

    RoundButton {
        id: button
        x: 134
        y: 165
        width: 213
        height: 55
        radius: 20
        palette.button: "#36c08f"
        text: "<font color='#FFFFFF'>" + "Crear partida" + "</font>"
        font.letterSpacing: -1
        font.pointSize: 20
        font.family: glacialIndifferenceRegular.name
        onClicked: mainStackView.push(createGame)
    }

    RoundButton {
        id: button1
        palette.button: "#36c08f"
        x: 134
        y: 242
        width: 213
        height: 55
        text: "<font color='#FFFFFF'>" + "Buscar partida" + "</font>"
        font.letterSpacing: -1
        font.pointSize: 20
        font.family: glacialIndifferenceRegular.name
        onClicked: mainStackView.push(searchGame)
    }

    RoundButton {
        id: button2
        palette.button: "#36c08f"
        x: 134
        y: 320
        width: 213
        height: 55
        text: "<font color='#FFFFFF'>" + "Unirme" + "</font>"
        font.letterSpacing: -1
        font.pointSize: 20
        font.family: glacialIndifferenceRegular.name
        onClicked: mainStackView.push(joinGame)
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
