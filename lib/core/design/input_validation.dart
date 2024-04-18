class InputValidator{
  static String? phone(String?value){
    if(value!.isEmpty){
      return "Please Enter Your Phone ";
    }else{
      return null;
    }

  }
  static String? card(String?value){
    if(value!.isEmpty){
      return "Please Enter Your Cart ";
    }else if(value.length < 14){
      return 'Cart Must Be 14 Characters ';
    }

  }
  static String? email(String?value){
    if(value!.isEmpty){
      return "Please Enter Your email ";
    }else{
      return null;
    }

  }
  static String? user(String?value){
    if(value!.isEmpty){
      return "Please Enter Your UserName ";
    }else{
      return null;
    }

  }
  static String? password(String?value) {
    if (value!.isEmpty) {
      return "Please Enter Your Password ";
    } else if (value.length < 7) {
      return "Password Must Be At Least 7 Characters";
    } else {
      return null;
    }
  }
}