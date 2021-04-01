class Usuario {
  final int int_idausuario;
  final String vhr_email;
  final String vhr_senha;
  final String vhr_nome;
  final String vhr_sobrenome;
  final String dtt_nascimento;
  final int int_genero;
  final String vhr_whatsapp;
  final int int_tipo;
  final String changedpasswordat;

  Usuario(
      {
        this.int_idausuario,
        this.vhr_email,
        this.vhr_senha,
        this.vhr_nome,
        this.vhr_sobrenome,
        this.dtt_nascimento,
        this.int_genero,
        this.vhr_whatsapp,
        this.int_tipo,
        this.changedpasswordat
      }
  );

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      int_idausuario: json['int_idausuario'],
      vhr_email: json['vhr_email'],
      vhr_senha: json['vhr_senha'],
      vhr_nome: json['vhr_nome'],
      vhr_sobrenome: json['vhr_sobrenome'],
      dtt_nascimento: json['dtt_nascimento'],
      int_genero: json['int_genero'],
      vhr_whatsapp: json['vhr_whatsapp'],
      int_tipo: json['int_tipo'],
      changedpasswordat: json['changedpasswordat'],
    );
  }
}