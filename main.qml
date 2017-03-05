import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtMultimedia 5.7
import QtWebEngine 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Dolt.ch Public Screen")

    Video {
        id: video
        anchors.fill: parent
        visible: false

        playlist: Playlist {
            PlaylistItem { source: "file:///home/samuel/big_buck_bunny.mp4"; }

            playbackMode: Playlist.Loop
        }

    }

    WebEngineView {
        id: web
        anchors.fill: parent
        url: "http://www.qt.io"
        visible: false
    }

    Page1 {
        id: welcome
        anchors.centerIn: parent
    }

    /*Timer {
            id: textTimer
            interval: 10000
            repeat: false
            running: true
            triggeredOnStart: false
            onTriggered: {
                video.play();
                welcome.visible = false;
                video.visible = true;

            }
    }*/

    Timer {
            id: textTimer
            interval: 5000
            repeat: false
            running: true
            triggeredOnStart: false
            onTriggered: {
                welcome.visible = false;
                web.visible = true;

            }
    }
}
