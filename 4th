let leaf;

function setup(){
    createCanvas(400, 400);
    leaf = new Mover(width / 2, 0);
}

function draw(){
    background(255);
    leaf.show();
}

class Mover{
    constructor(x, y){
        this.pos = createVector(x, y);
        this.vel = createVector(0, 0);
        this.acc = createVector(0, 0);
    }
}

show(){
    fill(100, 200, 100);
    noStroke();
    rectMode(CENTER);
    rect(this.pos.x, this.pos.y, 20, 20); 
}