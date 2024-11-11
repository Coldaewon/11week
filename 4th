function setup(){
    createCanvas(400, 400);
}

function draw(){
    background(255);
}

class Mover{
    constructor(x, y){
        this.pos = createVector(x, y);
        this.vel = createVector(0, 0);
        this.acc = createVector(0, 0);
    }
}