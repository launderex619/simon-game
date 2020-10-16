import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

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
        text: qsTr("INGRESA TU NOMBRE")
        font.letterSpacing: 0
        font.pixelSize: 37
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        styleColor: "#606ee2"
        style: Text.Outline
        font.family: glacialIndifferenceBold.name
        font.bold: false
    }

    function textValidator() {
        return txtInput.length > 0;
    }
    
    RoundButton {
        id: roundButton
        x: 343
        y: 214
        palette.button: "#36c08f"
        text: "<font color='#FFFFFF'>" +  "\u2713" + "</font>"
        onClicked: {
            UserModel.setName(txtInput.text)
            textValidator() ? mainStackView.push(home) : popup.open()
        }
    }
    
    TextInput {
        id: txtInput
        x: 107
        y: 221
        width: 201
        height: 26
        font.pixelSize: 25
        verticalAlignment: Text.AlignVCenter
        font.underline: false
        cursorVisible: true
        maximumLength: 14
        font.family: glacialIndifferenceRegular.name
        text: "xxX_NANIS_Xxx"

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
        onClicked: Qt.quit()
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.6600000262260437}
}
##^##*/
