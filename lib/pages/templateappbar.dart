part of 'config.dart';

class OnHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  OnHeader(
      {
        this.title = "Title",
      this.subtitle = "Subtitle",
      this.onBackButtonPressed,
      this.child,
      this.backColor
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.black,
        ),
        SafeArea(
            child: Container(
          color: backColor ?? "FCFCFC".toColor(),
        )),
        SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    // margin: EdgeInsets.only(bottom: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    width: double.infinity,
                    height: 60,
                    color: "FCFCFC".toColor(),
                    child: Row(
                      children: [
                        onBackButtonPressed != null
                            ? GestureDetector(
                                onTap: () {
                                  if (onBackButtonPressed != null) {
                                    onBackButtonPressed();
                                  }
                                },
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(right: 26),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/nav_back.png'))),
                                ),
                              )
                            : SizedBox(
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.roboto(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              subtitle,
                              style: GoogleFonts.roboto(
                                  color: "000000".toColor(),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: defaultMargin,
                    width: double.infinity,
                    color: "FCFCFC".toColor(),
                  ),
                  child ?? SizedBox()
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}