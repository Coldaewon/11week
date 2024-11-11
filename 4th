let leaf;

function setup(){
    createCanvas(400, 400);
    leaf = new Mover(width / 2, 0);
}

function draw(){
    background(255);

    let gravity = createVector(0, 0.1);
    leaf.applyForce(gravity);
    leaf.update();
    leaf.show();
}

class Mover{
    constructor(x, y){
        this.pos = createVector(x, y);
        this.vel = createVector(0, 0);
        this.acc = createVector(0, 0);
    }
    applyForce(force){
        this.acc.add(force);
    }

    update(){
        this.vel.add(this.acc);
        this.pos.add(this.vel);
        this.acc.mult(0);
    }
}

show(){
    fill(100, 200, 100);
    noStroke();
    rectMode(CENTER);
    rect(this.pos.x, this.pos.y, 20, 20); 
}