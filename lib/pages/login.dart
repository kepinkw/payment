part of 'config.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var txtUsername = new TextEditingController();
  var txtPassword = new TextEditingController();
  bool isLoading = false;

  ApiResponse apiResponse;

  @override

  void initState() {
    sendRequestGetDataUserLogin();
    super.initState();
  }

  void authentication(){
    UserLoginModel userLoginModel = new UserLoginModel(
        email: txtUsername.text,
        password: txtPassword.text
    );
    var requestBody = jsonEncode(userLoginModel.toJson());
    UserLoginService.authentication(requestBody).then((value) {
      final result = value;
      if(result.success == true && result.code == 200){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }else{}
    }).catchError((error){
      String err = error.toString();
    });
  }

  void sendRequestGetDataUserLogin() {
    UserLoginModel userLoginModel = new UserLoginModel();
    var requestBody = jsonEncode(userLoginModel.toJson());
    UserLoginService.getUserLogin(requestBody).then((value) {
      final result = value;
      if (result.success == true && result.code == 200) {
      } else {}
    }).catchError((error) {
      String err = error.toString();
    });
  }

  @override
  Widget build(BuildContext context) {

    return OffHeader(
      title: 'Sign In',
      subtitle: "Find your best ever meal",
      child: Column(
        children: [
        Image(image: AssetImage('assets/logo.png'),
        width: 200,
        ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:  TextField(
              controller: txtUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white70,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 2),
                ),
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 5),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:  TextField(
              controller: txtPassword,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white70,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 2),
                ),
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ButtonTheme(
              buttonColor: Colors.cyan,
              minWidth: double.infinity,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 10),
                onPressed: () {
                  authentication();
                },
                child: Text(
                  "LOGIN",
                  style:
                  TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ButtonTheme(
              buttonColor: Colors.cyan,
              minWidth: double.infinity,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 10),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignUpScreen()),
                  );
                },
                child: Text(
                  "SIGN UP",
                  style:
                  TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
              size: 45,
              color: mainColor,
            )
                : RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgotPassword()),
                );
              },
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              color: Colors.white,
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.roboto(
                    color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
