class Contato {
  String nome;
  String email;
  String iconUrl;
  bool isPressed;

  Contato(this.nome, this.email, this.iconUrl, this.isPressed);

  static List<Contato> contatos = [
    Contato('Paula Silva', 'joao@example.com', 'http://i.pravatar.cc/150?img=1', false),
    Contato('João Oliveira', 'ana@example.com', 'http://i.pravatar.cc/150?img=2', false),
    Contato('Carlos Santos', 'carlos@example.com', 'http://i.pravatar.cc/150?img=3', false),
    Contato('Matheus Pereira', 'maria@example.com', 'http://i.pravatar.cc/150?img=4', false),
    Contato('Gabriel Penna', 'pedro@example.com', 'http://i.pravatar.cc/150?img=6', false),

  ];
}
