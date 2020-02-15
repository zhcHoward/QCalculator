import QtQuick 2.0
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: main
    visible: true
    color: '#ffffff'
    width: main.minWidth
    height: main.minHeight
    minimumWidth: main.minWidth
    minimumHeight: main.minHeight

    readonly property int minWidth: 320
    readonly property int minHeight: 480
    property string displayText: "0"
    property string equation: ""

    function digitClicked(val) {
        main.displayText = main.displayText === "0" ? val : main.displayText + val
        main.equation += val
    }

    Text {
        id: display
        x: 8
        y: 8
        width: parent.width - 16
        height: 70
        text: displayText
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 60
    }

    GridLayout {
        id: grid
        x: 8
        y: 85
        width: parent.width - 16 // 8 * 2
        height: parent.height - display.height - 24 // 8 * 3
        rows: 5
        columns: 4

        Button {
            id: b_clear
            text: qsTr("C")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.displayText = "0"
                main.equation = ""
            }
        }

        Button {
            id: b_divide
            text: qsTr("÷")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.displayText += "÷"
                main.equation += "/"
            }
        }

        Button {
            id: b_multiply
            text: qsTr("×")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.displayText += "×"
                main.equation += '*'
            }
        }

        Button {
            id: b_backspace
            text: qsTr("←")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                var text = main.displayText.slice(0, -1)
                main.displayText = text === '' ? '0' : text
                main.equation = main.equation.slice(0, -1)
            }
        }

        Button {
            id: b_7
            text: qsTr("7")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked("7")
            }
        }

        Button {
            id: b_8
            text: qsTr("8")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('8')
            }
        }

        Button {
            id: b_9
            text: qsTr("9")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('9')
            }
        }

        Button {
            id: b_minus
            text: qsTr("－")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.displayText += '-'
                main.equation += '-'
            }
        }

        Button {
            id: b_4
            text: qsTr("4")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('4')
            }
        }

        Button {
            id: b_5
            text: qsTr("5")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('5')
            }
        }

        Button {
            id: b_6
            text: qsTr("6")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('5')
            }
        }

        Button {
            id: b_plus
            text: qsTr("＋")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.displayText += '+'
                main.equation += '+'
            }
        }

        Button {
            id: b_1
            text: qsTr("1")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('1')
            }
        }

        Button {
            id: b_2
            text: qsTr("2")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('2')
            }
        }

        Button {
            id: b_3
            text: qsTr("3")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('3')
            }
        }

        Button {
            id: b_equal
            text: qsTr("=")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.rowSpan: 2
            onClicked: {
                var result = eval(main.equation).toString()
                main.equation = result
                main.displayText = result
            }
        }

        Button {
            id: b_percent
            text: qsTr("%")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Button {
            id: b_0
            text: qsTr("0")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.digitClicked('0')
            }
        }

        Button {
            id: b_dot
            text: qsTr(".")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                main.equation += '.'
                main.displayText += '.'
            }
        }
    }

}
