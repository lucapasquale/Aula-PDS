float dado;
float dadoDelay[11];
float dadoMult[11];
float valorFinal;
int i = -1;
bool toggle;

int PINT = 13;
int timer1_counter;

const int BL = 11;
const long B[11] = {
      18334348, 57240683, 138754408, 261160819, 381680662, 433141808,
      381680662, 261160819, 138754408, 57240683, 18334348};

void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
  pinMode(PINT, OUTPUT);
  Serial.begin(57600);
  noInterrupts();

  TCCR1A =0;
  TCCR1B =0;

  timer1_counter = 65224;
  TCNT1 = timer1_counter;

  TCCR1B |= (1 << CS12);
  TIMSK1 |= (1 << TOIE1);

  interrupts();
}

ISR(TIMER1_0VF_vect){
  TCNT1 = timer1_counter;

  digitalWrite(PINT,digitalRead(PINT) ^1);
//  digitalWrite(PINT,1);
// digitalWrite(PINT,0);
//  dadoDelay[0] = LeADC(); 
//  for (int j = 0; j < 11; j++){
//    dadoMult[j] = dadoDelay[j] * B[j];
//    valorFinal += dadoMult[j];
//  }
//  for (int j = 11; j > 0; j--){
//    dadoDelay[j] = dadoDelay[j-1];
//  }
//  
//  int novoValor = map(valorFinal,-1,2,0,255);
//analogWrite(2,valorFinal);
//  Serial.print(valorFinal);
//  Serial.print(";");
  //Serial.println(novoValor);
//  valorFinal = 0;
  
}

void loop() {

// digitalWrite(PINT,1);
// digitalWrite(PINT,0);
//  dadoDelay[0] = LeADC(); 
//  for (int j = 0; j < 11; j++){
//    dadoMult[j] = dadoDelay[j] * B[j];
//    valorFinal += dadoMult[j];
//  }
//  for (int j = 11; j > 0; j--){
//    dadoDelay[j] = dadoDelay[j-1];
//  }
//  
//  int novoValor = map(valorFinal,-1,2,0,255);
//  analogWrite(2,valorFinal);
//  Serial.print(valorFinal);
//  Serial.print(";");
//  //Serial.println(novoValor);
//  valorFinal = 0;
//
// 
//  delayMicroseconds(4500);
}

float LeADC(){
  int analogInput = analogRead(A0);
  return map(analogInput,0,1023,0,5);
}

