import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:getwidget/getwidget.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:snippet_coder_utils/list_helper.dart';
import 'package:snippet_coder_utils/multi_images_utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> countries = [];

  String? countryId;

  @override
  void InitState() {
    super.initState();
    this.countries.add({"id": 1, "label": "Alaska"});
    this.countries.add({"id": 2, "label": "Western Canada"});
  }

  List<String> _list = ["Alaska", "Western Canada", "India"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/back1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/logo.png",
                  width: 250,
                  height: 400,
                )),
            /*FormHelper.dropDownWidget(
              context,
              "Select Country",
              this.countryId,
              this.countries,
              (onChangedVal) {
                this.countryId = onChangedVal;
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please Select Country';
                }
              },
              borderColor: Colors.black,
              borderFocusColor: Colors.black,
              borderRadius: 10,
              optionValue: "id",
              optionLabel: "label",*/

            AwesomeDropDown(
              dropDownList: _list,
              numOfListItemToShow: 2,
              elevation: 3,
              dropDownIcon: Icon(Icons.arrow_drop_down_circle),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ElevatedButton(
                    child: Image.asset(
                      'assets/globey.jpeg',
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signin()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                          right: 15, left: 15, top: 15, bottom: 15),
                      elevation: 15,
                      shadowColor: Color.fromARGB(255, 40, 9, 243),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
