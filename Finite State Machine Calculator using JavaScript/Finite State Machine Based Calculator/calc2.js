var state;
var firstoperand;
var first;
var second;
var secondoperand;
var decimalcount;
var decimal;
var operation;
var length;
//plus     1
//subtract 2
//multiply 3
//divide   4

//WaitForFirstOperand           1
//FirstOperandBeforeDecimal     2
//firstOpeandAfterDecimal       3
//OperandDisplay                4
//WaitForSecondOperand          5
//SecondOperandBeforeDecimal    6
//SecondOperandAfterDecimal     7
//ShowResult                    8

function Page_Load() {
    state = 1;
    firstoperand = 0;
    length = 10;
    first = "";
    second = "";
    secondoperand = 0;
    decimalcount = 0;
    decimal = 0;
    operation = 0;
}
function btn_Click(input) {
    if (state == 1) {
        if (input == 0) {
            //do nothing
            first = input.toString();
            document.getElementById("output").value = first;
        }
        else {
            first = first + input.toString();
            state = 2;
            document.getElementById("output").value = first;
        }
    }
    else if (state == 2) {

        first = first + input.toString();
        if (first.length > 10) {
            document.getElementById("output").value = "Max length " + length;
            first = "";
            state = 1;
        }
        else {

            document.getElementById("output").value = first;
        }
    }
    else if (state == 3) {
        decimal = input;
        decimalcount++; //updating the decimalcount here
        first = first + decimal.toString();
        if (first.length > 10) {
            document.getElementById("output").value = "Max length " + length;
            first = "";
            state = 1;
        }
        else {

            document.getElementById("output").value = first;
        }

    }
    else if (state == 4) {
        if (input == 0) {
            state = 5;
            second = second + input.toString();
            document.getElementById("output").value = second;
        }
        else {
            second = input.toString();
            state = 6;
            second = input.toString();
            document.getElementById("output").value = second;
        }
    }
    else if (state == 5) {
        if (input == 0) {
            document.getElementById("output").value = second;
        }
        else {
            second = input.toString();
            state = 6;
            document.getElementById("output").value = second;
        }
    }
    else if (state == 6) {
        second = second + input.toString();
        if (second.length > length) {
            document.getElementById("output").value = "Max length " + length;
            second = "";
            state = 5;
        }
        else {

            document.getElementById("output").value = second;
        }
        
    }
    else if (state == 7) {
        decimal = input.toString();
        decimalcount++; //updating the decimalcount here
        second = second + decimal;
        if (second.length > length) {
            document.getElementById("output").value = "Max length " + length;
            second = "";
            state = 5;
        }
        else {

            document.getElementById("output").value = second;
        }
        
    }
    else if (state == 8) {
        if (input == 0) {
            state = 1;
            first = "";
            document.getElementById("output").value = "0";

        }
        else {
            state = 2;
            first = input.toString();
            document.getElementById("output").value = first;
        }
    }

}
function div_Click() {
    
    operation = 4;
    state = 4;
    decimalcount = 0;
    decimal = 0;
    document.getElementById("output").value = "/";


}

function mul_Click() {
    operation = 3;
    state = 4;
    decimalcount = 0;
    decimal = 0;
    document.getElementById("output").value = "*";

}
function clr_Click() {
    operation = 0;
    state = 1;
    decimalcount = 0;
    decimal = 0;
    first = "";
    second = "";
    document.getElementById("output").value = "0";
}
function plus_Click() {
    operation = 1;
    state = 4;
    decimalcount = 0;
    decimal = 0;
    document.getElementById("output").value = "+";
}
function min_Click() {
    operation = 2;
    state = 4;
    decimalcount = 0;
    decimal = 0;
    document.getElementById("output").value = "-";

}
function eql_Click() {
    state = 8;
    decimalcount = 0;
    firstoperand = 0;
    secondoperand = 0;
    decimal = 0;
    if (operation == 1) {
        if (first=="") {
            first = "0";
        }
        firstoperand = parseFloat(first) + parseFloat(second);
        first = firstoperand.toString();      
        second = "";
        if (isNaN(firstoperand)) {
            document.getElementById("output").value = "Syntax Error";
        }
        else {
            document.getElementById("output").value = firstoperand;
        }
        operation = 0;
    }
    else if (operation == 2) {
        if (first == "") {
            first = "0";
        }
        firstoperand = parseFloat(first) - parseFloat(second);
        first = firstoperand.toString();
        second = "";
        if (isNaN(firstoperand)) {
            document.getElementById("output").value = "Syntax Error";
        }
        else {
            document.getElementById("output").value = firstoperand;
        }
        
        operation = 0;
    }
    else if (operation == 3) {
        if (first == "") {
            first = "0";
        }
        firstoperand = parseFloat(first) * parseFloat(second);
        first = firstoperand.toString();
        second = "";
        if (isNaN(firstoperand)) {
            document.getElementById("output").value = "Syntax Error";
        }
        else {
            document.getElementById("output").value = firstoperand;
        }
   
        operation = 0;
    }
    else if (operation == 4) {
        if (first == "") {
            first = "0";
        }
        firstoperand = parseFloat(first) / parseFloat(second);
        first = firstoperand.toString();
        second = "";
        if (isNaN(firstoperand)) {
            document.getElementById("output").value = "Syntax Error";
        }
        else {
            document.getElementById("output").value = firstoperand;
        }
        
        operation = 0;
    }



}
function dot_Click() {
    if (state == 1) {
        state = 3;

        first = first + ".";
        if (first == ".") {
            first = "0.";
        }
        document.getElementById("output").value = first;
        first
    }
    if (state == 2) {
        state = 3;
        first = first + ".";
        if (first == ".") {
            first = "0.";
        }
        document.getElementById("output").value = first;
    }
    if (state == 3) {
        state = 3;
    }
    if (state == 4) {
        document.getElementById("output").value = state;
        state = 7;
        second = second + ".";
        if (second == ".") {
            second = "0.";
        }


    }
    if (state == 5) {
        state = 7;
        second = second + ".";
        if (second == ".") {
            second = "0.";
        }
        document.getElementById("output").value = second;
    }
    if (state == 6) {
        state = 7;
        second = second + ".";
        if (second == ".") {
            second = "0.";
        }
        document.getElementById("output").value = second;
    }
    if (state == 7) {
        state = 7;
    }

    if (state == 8) {
        state = 3;
        first = "0";
        firstoperand = 0;
        first = first + ".";
        if (first == ".") {
            first = "0.";
        }
        document.getElementById("output").value = first;

    }


}