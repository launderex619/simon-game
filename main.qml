import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 480
    height: 500
    visible: true
    title: qsTr("Simon Game")

    StackView {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: parent.top
        }
        id: mainStackView
        initialItem: nameMenu
    }
    Button {
           text: "Open"
           onClicked: popup.open()
       }
    Popup {
            id: popup
            x: 100
            y: 180
            width: 265
            height: 150
            font.bold: true
            margins: -1
            modal: true
            focus: true
            font.family: glacialIndifferenceBold.name
            padding: 10
            palette.window: "#FE7677"



            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

            contentItem: Text {
                    text: "<font color='#ffffff'>" + "¡Error! Intente de nuevo" + "</font>"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter


                }
            RoundButton {
                    id: button2
                    palette.button: "#ffffff"
                    x: 60
                    y: 90
                    width: 120
                    height: 29
                    text: "<font color='#FE6768'>" + "Salir" + "</font>"
                    font.letterSpacing: -1
                    font.pointSize: 10
                    font.family: glacialIndifferenceRegular.name
                    onClicked: popup.close()
            }
        }


    Component {
        id: home
        Home {}
    }

    Component {
        id: nameMenu
        NameMenu {}
    }

    Component {
        id: createGame
        CreateGame {}
    }

    Component {
        id: joinGame
        JoinGame {}
    }

    Component {
        id: lobby
        Lobby {}
    }

    Component {
        id: game
        Game {}
    }

    Component {
        id: searchGame
        SearchGame {}
    }

}
