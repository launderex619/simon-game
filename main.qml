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
