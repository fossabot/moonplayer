/* Copyright 2013-2020 Yikun Liu <cos.lyk@gmail.com>
 *
 * This program is free software: you can redistribute it
 * and/or modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
 * Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see http://www.gnu.org/licenses/.
 */
 
import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import CustomWidgets 1.0
import MoonPlayer 1.0

CustomDialog {
    id: videoOptionsDialog
    
    property MpvObject mpvObject: null
    
    width: 400
    height: 260 + reservedHeight
    title: qsTr("Video options")
    
    GridLayout {
        anchors.fill: parent
        anchors.margins: suggestedMargins
        columns: 3
        rowSpacing: 0
        
        // Brightness
        Label { text: qsTr("Brightness") }
        Slider {
            id: brightnessSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("brightness", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: brightnessSlider.value }
        
        // Contrast
        Label { text: qsTr("Contrast") }
        Slider {
            id: contrastSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("contrast", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: contrastSlider.value }
        
        // Saturation
        Label { text: qsTr("Saturation") }
        Slider {
            id: saturationSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("saturation", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: saturationSlider.value }
        
        // Gamma
        Label { text: qsTr("Gamma") }
        Slider {
            id: gammaSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("gamma", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: gammaSlider.value }
        
        // Hue
        Label { text: qsTr("Hue") }
        Slider {
            id: hueSlider
            from: -10
            to: 10
            value: 0
            stepSize: 1
            snapMode: Slider.SnapAlways
            onValueChanged: mpvObject.setProperty("hue", Math.floor(value))
            Layout.fillWidth: true
        }
        Label { text: hueSlider.value }
    }
}
