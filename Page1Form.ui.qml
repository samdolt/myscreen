import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    width: 640
    height: 480

    Label {
        id: label
        x: 0
        y: 62
        width: 640
        height: 57
        text: qsTr("Bienvenue")
        font.pointSize: 22
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
    }

    TextField {
        id: textField
        x: 0
        y: 264
        width: 640
        height: 43
        text: qsTr("25Q-34T-2DF")
        padding: 0
        bottomPadding: 6
        topPadding: 6
        rightPadding: 0
        leftPadding: 0
        font.pointSize: 12
        font.bold: true
        enabled: true
        horizontalAlignment: Text.AlignHCenter
    }

    Label {
        id: textArea
        x: 0
        y: 350
        width: 640
        height: 56
        text: qsTr("http://screen.dolt.ch/connect")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pointSize: 16
    }

    Label {
        id: label1
        x: 0
        y: 160
        width: 640
        height: 75
        text: qsTr("Pour appairer l'écran, entrer le code affiché ci-desous sur notre plateforme web.")
        rightPadding: 110
        leftPadding: 110
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.AlignHCenter
    }


}
