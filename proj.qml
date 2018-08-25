import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    id: appWindow
    width: 300
    height: 300
    property string x;
    property string y;
    property string i;
    property string num1;
    property string num2;
    property int result1 : 0;
    property int result2 : 1;

function add(num1){
  num2 = (result1 + num1);
  return num2;
}
function subtract(num1){
  num2 = (num1 - result1);
  return num2;
}
function multiply(num1){
  num2 = (result2 * num1);
  return num2;
}
Rectangle {
    id: calci
    color: "black"
    anchors.centerIn: parent
    anchors.fill: parent
    }

 Button {
    id: button5
    text: "5"
    anchors.centerIn: calci
    anchors {
        top : t.bottoms
        horizontalCenter: calci.horizontal
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = i
        /* x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
  }

Button {
    id: button4
    text: "4"
    anchors {
        right: button5.left
        verticalCenter: calci.verticalCenter
    }
    onClicked: {
        i = button4.text
        var num1 = parseInt(i)
        t.text = i
    }
}

 Button {
     id: button6
     text: "6"
     anchors {
        left: button5.right
        verticalCenter: calci.verticalCenter
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
    /*  t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
}

Button {
    id: button8
    text: "8"
    anchors {
        top: button5.bottom
        horizontalCenter: calci.horizontalCenter
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
     /* t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
}

Button {
    id: button9
    text: "9"
    anchors {
        top: button6.bottom
        horizontalCenter: button6.horizontalCenter
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
    /*  t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
}

Button {
    id: button2
    text: "2"
    anchors {
        bottom: button4.top
        horizontalCenter: calci.horizontalCenter
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
    /*  t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
}

Button {
    id: button3
    text: "3"
     anchors {
        bottom: button6.top
        horizontalCenter: button6.horizontalCenter
    }
   onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
    /*  t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
}


Button {
    id: button1
    text: "1"
    anchors {
        bottom: button4.top
        horizontalCenter: button4.horizontalCenter
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
    /*  t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
  }

Button {
    id: button7
    text: "7"
    anchors {
        top: button4.bottom
        horizontalCenter: button4.horizontalCenter
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
    /*  t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2 */
    }
}
Button {
    id: button0
    text: "0"
    anchors {
        top: button8.bottom
        horizontalCenter: calci.horizontalCenter
    }
    onClicked: {
        i = button5.text
        var num1 = parseInt(i)
        t.text = num1
    /*  t.text = num1
        x = t.text + num1
        var num2 = parseInt(i)
        t.text = num2
        y = t.text + num2  */
    }
}

Button {
    id: button10
    text: "+"
    anchors {
        left: button5.right
        verticalCenter: button0.verticalCenter
    }
    onClicked: {
          add(t.text);
          }
}

Button {
    id: button11
    text: "-"
    anchors {
        right: button5.left
        verticalCenter: button0.verticalCenter
    }
    onClicked: {
        subtract(t.text);
    }
}

Button {
    id: button12
    text: "*"
    anchors {
        top: button0.bottom
        horizontalCenter: calci.horizontalCenter
    }
   onClicked: {
        multiply(t.text);
    }
}

TextField {
    id: t
    width: 230
    height: 50
    text: " "
    anchors {
        top: calci.top
        horizontalCenter: parent.horizontalCenter
    }
}

Button {
    id: button13
    text: "="
     anchors {
        left: button8.right
        verticalCenter: button12.verticalCenter
    }
    onClicked: {
      /* if(num1.text == '+'){
           function add(num1,num2);
       } else if(num1.text == '-'){
           function subtract(num1,num2);
       }*/
       t.text = num2;
    }
}

Button {
    id: button16
    text: "C"
    anchors {
        right: button5.left
        verticalCenter: button12.verticalCenter
    }
    onClicked: {
        t.text = " "
    }
    }
}
