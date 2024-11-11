let moverA = new Mover();
let moverB = new Mover();

constructor(x, y, mass){
    this.mass = mass;
    this.pos = createVector(x, y);
    this.vel = createVector(0, 0);
    this.acc = createVector(0, 0);
}