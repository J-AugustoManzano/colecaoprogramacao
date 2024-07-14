// c02ex01.rs

fn main() {
  // Operadores binários
  println!("{}", 5 + 3);       // Saída: 8
  println!("{}", 10 - 4);      // Saída: 6
  println!("{}", 2 * 6);       // Saída: 12
  println!("{}", 10.0 / 3.0);  // Saída: 3.3333... (quociente real)
  println!("{}", 10 / 3);      // Saída: 3 (quociente inteiro)
  println!("{}", 10 % 3);      // Saída: 1 (resto da divisão)

  // Operador unário
  println!("{}", -8);          // Saída: -8 (inverte sinal)

  // Exponenciação
  println!("{}", f64::powf(2.0, 3.0)); // Saída: 8 (2 elevado a 3)
}
