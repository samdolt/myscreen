import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtMultimedia 5.8

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Dolt.ch Public Screen")

    Video {
        id: video
        anchors.fill: parent
        visible: false
        //source: "file:///home/samuel/big_buck_bunny.mp4"

        playlist: Playlist {
            PlaylistItem { source: "file:///home/samuel/big_buck_bunny.mp4"; }

            playbackMode: Playlist.Loop
        }

    }

    Page1 {
        id: welcome
        anchors.centerIn: parent
    }

    Timer {
            id: textTimer
            interval: 10000
            repeat: false
            running: true
            triggeredOnStart: false
            onTriggered: {
                video.play();
                welcome.visible = false;
                video.visible = true;
                //video.play();

            }
    }
}
