void setup(){
  int kWh = 100;
  int powerCharge = calcCharge(kWh);
  println(powerCharge);
}

int calcCharge(int kWh){
  int charge = kWh * 17;
  return charge;
}
