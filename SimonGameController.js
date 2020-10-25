const GREEN = 0;
const YELLOW = 1;
const RED = 2;
const BLUE = 3;

const buttons = Array(4);
const movements = [];
let animation = {}

function constructor(greenBtn, yellowBtn, redBtn, blueBtn, animationBtn) {
    buttons[GREEN] = greenBtn;
    buttons[YELLOW] = yellowBtn;
    buttons[RED] = redBtn;
    buttons[BLUE] = blueBtn;
    animation = animationBtn
}

function addMovement(move) {
    movements.push(move);
    console.log(movements);
}
