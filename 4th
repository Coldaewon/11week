let moverA = new Mover();
let moverB = new Mover();

constructor(){
    this.mass = 1;
    this.pos = createVector(width / 2, 30);
    this.vel = createVector(0, 0);
    this.acc = createVector(0, 0);
}