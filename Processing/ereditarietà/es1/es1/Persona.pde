class Persona {
  private String nome;
  private String cognome;
  
  public Persona (String nome, String cognome) {
    this.nome = nome;
    this.cognome = cognome;
  }
  
  public void setNome (String nome) throws Exception{
    if (this.nome == null) {
      throw new Exception("Errore...nome nullo..."); 
    }
  }
}
