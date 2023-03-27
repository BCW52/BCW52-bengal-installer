import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0
        Image {
            id: background1
            source: "welcome.png"
            width: parent.width; height: parent.height
            verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }

    }
        Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0
        Image {
            id: background2
            source: "Feature-1.png"
            width: parent.width; height: parent.height
            verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }

    }
        Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0
        Image {
            id: background3
            source: "Feature-2.png"
            width: parent.width; height: parent.height
            verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }

    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0
        Image {
            id: background4
            source: "conclusion.png"
            width: parent.width; height: parent.height
            verticalAlignment: Image.AlignTop
            fillMode: Image.Stretch
            anchors.fill: parent
        }

    }
    function onActivate() {
          console.log("QML Component (default slideshow) activated");
          presentation.currentSlide = 0;
    }

    function onLeave() {
          console.log("QML Component (default slideshow) deactivated");
    }

}
