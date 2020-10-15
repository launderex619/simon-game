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
        source: "font/glacial-indifference/GlacialIndifference-Bold.otf"}

    Text {
        id: txtTitle
        x: 4
        y: 8
        width: 472
        height: 110
        color: "#5a6bf6"
        text: qsTr("ESPERAR JUGADORES")
        font.letterSpacing: -7.5
        font.pixelSize: 53
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        styleColor: "#606ee2"
        style: Text.Outline
        font.family: glacialIndifferenceBold.name
        font.bold: false
    }

    Text {
        id: text1
        x: 119
        y: 154
        text: qsTr("ID de sala:")
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: glacialIndifferenceRegular.name
    }
    BusyIndicator {
        id: busyIndicator
        x: 166
        y: 237
        width: 148
        height: 97

        ColorAnimation {
            from: "white"
            to: "orange"
            duration: 200
        }
    }
    RoundButton {
        id: button1
        palette.button: "#36c08f"
        x: 60
        y: 440
        width: 150
        height: 39
        text: "<font color='#FFFFFF'>Iniciar</font>"
        font.letterSpacing: -1
        font.pointSize: 20
        font.family: glacialIndifferenceRegular.name
        onClicked: mainStackView.push(game)
    }

    RoundButton {
        id: button2
        palette.button: "#36c08f"
        x: 270
        y: 440
        width: 150
        height: 39
        text: "<font color='#FFFFFF'>" + "Salir" + "</font>"
        font.letterSpacing: -1
        font.pointSize: 20
        font.family: glacialIndifferenceRegular.name
        onClicked: mainStackView.pop()
    }

}
