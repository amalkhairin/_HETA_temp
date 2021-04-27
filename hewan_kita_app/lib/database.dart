import 'dart:convert';

class Database {
  String endpoint;
  String apiKey;

  Database({
    this.endpoint,
    this.apiKey
  });

  loginUser({String username,String password}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/login");
    response = await http.post(url, body: {'username':username, 'password':password});
    if(response.statusCode == 200){
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  inputUser({String fullname,String email, String username, String password}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/adduser");
    response = await http.post(url,
        body: {'fullname':fullname,'username': username, 'email': email, 'password': password});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  updatePassword({String password}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/updatepass");
    response = await http.post(url,
        body: {'password': password});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getUser({int id}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/user/$id");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getDokter({int id}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/dokter/$id");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getDokterAll() async {
    var response;
    Uri url = Uri.https(this.endpoint, "/dokter/all");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  insertKonsultasi({int id_dokter, int id_pemilikhewan}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/login");
    response = await http
        .post(url, body: {'id_dokter': id_dokter, 'id_pemilikhewan': id_pemilikhewan});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  inputMessage({String msg, int id}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/message");
    response = await http.post(url,
        body: {'message': msg, 'id': id});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getChat({int id}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/chat/$id");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  insertPhoto({String photo, int id}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/user/photo");
    response = await http.post(url, body: {'photo': phhoto, 'id': id});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  insertTransaction({int id_pemilikhewan, var data}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/user/photo");
    response = await http.post(url, body: {'id': id_pemilikhewan, 'data': data});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  insertRecipes({int id_pemilikhewan, List<String> resep}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/user/photo");
    response =
        await http.post(url, body: {'id': id_pemilikhewan, 'resep': resep});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getPaymentMethod() async {
    var response;
    Uri url = Uri.https(this.endpoint, "/payment");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getNota({int id_pemilikhewan, int id_order}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/nota/$id_pemilikhewan/$id_order");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getAvailability() async {
    var response;
    Uri url = Uri.https(this.endpoint, "/dokter/available");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getKlinikAll() async {
    var response;
    Uri url = Uri.https(this.endpoint, "/klinik");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getKlinik({int id}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/klinik/$id");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  showMap({List<String> location}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/map");
    response =
        await http.post(url, body: {'lat': location[0], 'long': location[1]});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  insertReservasi({int id_pemilikhewan, int id_klinik}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/klink/reservasi");
    response =
        await http.post(url, body: {'id': id_pemilikhewan, 'id_klinik': id_klinik});
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getHistory({int id}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/history/$id");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

  getHistoryFilter({int id, String filter}) async {
    var response;
    Uri url = Uri.https(this.endpoint, "/history/$id/$filter");
    response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonRes = json.decode(response.body);
      return jsonRes;
    } else {
      return false;
    }
  }

}