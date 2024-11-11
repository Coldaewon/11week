class Mover { 
    constructor(){
        this.pos = createVector();
        this.vel = createVector();
        this.acc = createVector();
    }
}

Mover.applyForce(wind);
Mover.applyForce(gravity);
Mover.update();

applyFocer(force){
    this.acc.add(force);
}

if(mouseIsPressed){
    let wind = createVector(0.5, 0);
    Mover.applyForce(wind);
}

update(){
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    //가속이 명확해지게
    this.acc.mult(0);
}