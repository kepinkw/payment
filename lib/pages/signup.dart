part of 'config.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  TextEditingController txtRepass = TextEditingController();
  TextEditingController txtHp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OnHeader(
      title: 'Sign Up',
      subtitle: "Fill all field to access Solucionis",
      onBackButtonPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginScreen(),
        ));
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:  TextField(
              controller: txtNama,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white70,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 2),
                ),
                hintText: "Full Name",
                prefixIcon: Icon(Icons.account_circle_rounded),
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
              controller: txtEmail,
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
              controller: txtPass,
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
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 5),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:  TextField(
              obscureText: true,
              controller: txtRepass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white70,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 2),
                ),
                hintText: "Retype Password",
                prefixIcon: Icon(Icons.lock),
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
              controller: txtHp,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white70,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 2),
                ),
                hintText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
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

                },
                child: Text(
                  "SIGN UP",
                  style:
                  TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
