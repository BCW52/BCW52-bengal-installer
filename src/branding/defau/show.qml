import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 20000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {

        Image {
            id: background1
            source: "welcome.png"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }