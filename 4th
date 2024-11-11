class Mover { 
    constructor(){
        this.pos = createVector();
        this.vel = createVector();
        this.acc = createVector();
    }
}

Mover.applyForce(wind);
Mover.applyForce(gravity);

applyFocer(force){
    this.acc.add(force);
}