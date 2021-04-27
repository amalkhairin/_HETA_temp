class PemilikHewan {
  String? username;
  String? password;
  String? fullname;
  String? email;
  String? photo;

  PemilikHewan({this.password, this.username,this.email,this.fullname,this.photo});

  getUsername(){
    return this.username;
  }

  getEmail(){
    return this.email;
  }

  getPhoto(){
    return this.photo;
  }

  setFullname({String? fullname}){
    this.fullname = fullname;
  }

  setUsername({String? username}){
    this.username = username;
  }

  setEmail({String? email}){
    this.email = email;
  }

  setPassword({String? password}){
    this.password = password;
  }

  setPhtoto({String? photo}){
    this.photo = photo;
  }
}