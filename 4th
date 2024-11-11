let leaf;

function setup(){
    createCanvas(400, 400);
    leaf = new Mover(width / 2, 0);
}

function draw(){
    background(255);

    let gravity = createVector(0, 0.1);
    leaf.applyForce(gravity);

    if(mouseIsPressed){
        let wind = createVector(-0.1 , 1);
        leaf.applyForce(wind);
    }

    leaf.checkEdges();
    leaf.update();
    leaf.show();
}

class Mover{
    constructor(x, y){
        this.pos = createVector(x, y);
        this.vel = createVector(0, 0);
        this.acc = createVector(0, 0);
        this.size = 20;
    }
    applyForce(force){
        this.acc.add(force);
    }
    update(){
        this.vel.add(this.acc);
        this.pos.add(this.vel);
        this.acc.mult(0);
    }

    checkEdges(){
        if(this.pos.x > width - 10){
            this.pos.x = width - 10;
            this.vel.x *= -1;
        }else if(this.pos.x < 10){
            this.pos.x = 10;
            this.vel.x *= -1;
        }
        if(this.pos.y > height - 10){
            this.pos.y = height - 10;
            this.vel.y *= -1;
        }else if(this.pos.y < 10){
            this.pos.y = 10;
            this.vel.y *= -1;
        }
    }
}

show(){
    fill(100, 200, 100);
    noStroke();
    rectMode(CENTER);
    rect(this.pos.x, this.pos.y, this.size, this.size); 
}
// 오류가 뜸