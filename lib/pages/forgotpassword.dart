part of 'config.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController txtEmail = new TextEditingController();

  void resetChecker(){

  }

  @override
  Widget build(BuildContext context) {
    return OnHeader(
      title: 'Recover Password',
      subtitle: "Please enter your E-mail",
      onBackButtonPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          new Icon(Icons.lock, size: 180.0, color: Colors.black54),
          TextFormField(
            controller: txtEmail,
            decoration: InputDecoration(
              fillColor: Colors.white70,
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.blueAccent, width: 2),
              ),
              hintText: "Type your E-mail",
              prefixIcon: Icon(Icons.email),
            ),
          ),
          Text(""),
          ButtonTheme(
              buttonColor: Colors.cyan[300],
              minWidth: double.infinity,
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: RaisedButton(
                onPressed: () {
                  resetChecker();
                },
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              )),
        ],
      ),
    );
  }
}
