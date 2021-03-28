part of 'config.dart';

class OffHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  OffHeader(
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