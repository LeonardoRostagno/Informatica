class Studente extends Persona {
  private char sezione;
  private int classe;
  
  public Studente (String nome, String cognome, char sezione, int classe) {
    super(nome, cognome);
    
    this.sezione = sezione;
    this.classe = classe;
  }
  
}
