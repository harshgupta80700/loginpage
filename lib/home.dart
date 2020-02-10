import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        
              child: Column(
          children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Image.asset("assets/image_01.png"),
                ),
                ],
              )
              
            ],

          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("LOGIN",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Username",
                          style: TextStyle(
                    
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent
                          ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 2.0),
                      child: TextField(
                        controller: usernamecontroller,
                       decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock)
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("password",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent
                          ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 2.0),
                      child: TextField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye)
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                     Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                                      gradient: LinearGradient(colors: [
                      Color(0xFF17ead9),
                                  Color(0xFF6078ea)
                    ]
                    )
                  ),
                  child: Center(
                    child: Text("Sign In",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),),
                  ),
                ),
                onTap: (){
                  setState(() {
                     if(usernamecontroller.text=="harshgupta" && passwordcontroller.text=="karmaisabitch"){
                    CupertinoAlertDialog(
                      title: Text("You have logged in successfully"),

                    );
                  }
                  });
                 
                },
              ),
              
            ],
          ),
          SizedBox(height: 25.0)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 140.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(image: ExactAssetImage("assets/brl.jpeg"),
                fit: BoxFit.fitWidth
                )
              ),

            ),
          )
        //  Row(
        //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //    children: <Widget>[
        //      Column(
        //        children: <Widget>[
        //          InkWell(
        //                         child: Container(
        //              height: 65.0,
        //              width: 65.0,
        //              decoration: BoxDecoration(
        //                shape: BoxShape.circle,
        //                image: DecorationImage(image: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEVCZ7L///+5w95GarM2YK80Xq+pttc+ZbFfe7s6YrCHmsmZqdA8Y7Ds8PdSdLlffr3V3OyQpNFrh8Lg5vIvW633+fyCmsxKb7fG0eier9WtutnAy+Ta4e91jsR8k8eMn8zP1ulvh8Dx9PkmVqvo7ff2SOu1AAAEYklEQVR4nO3da3uqOBSG4YDBmDYkHEStp1qn//83jqfuvWemoxGarBWu9/myP9XNfS0sIJGK7FpZ1Y0VY8k2dVXeZOL6T+6kNtTb9YMZLV3+h7B1cky8a0a69ktYWU29OUHStroKWzu+AV4ztr0I3TgneE67szCX1NsRMJlnonRj3UfPGVeKaswjPA2xEvV434XndC2aMe+kp920EeM5Vfu+sfsQQgghhBBCCCGEEPJJKWOM1lpKfc5cUkoo6g37mbQshG12+8XLe/1+6mWx3+8+GjezSyXnRXESq1SpyuhiPlmsq21bHrvudrc667ruWJafn227rQ6b9euisUWStySUFM3r6pfrfq/pEc18Oa2OfryzMLW7Lnry4Tu9JGeoin31DC+1GSrjDk/NL7UZmsn0aV9SM5R2+7wvoRmq4q3HABMSnoC9fMnspWqy6glMZIbKbPoCU5lhf2AaMyym/YFJzFDXA4ApzNA0/qfZSc5QyWfPRFOboR7yJkxBaNygfTSBvXTe+1CfyAyNGwjkPkOlhv2a4T9Ds+t3QZHODE0+FMh8hmo5eITMZygHna+lMEPZ63OLhITGlY8FD4Wc91LZ95OLfwgZz1ANufD9LWQ8Q2U/f0LIeIZm9gSk267y9Xo9/XfrD8bfFtELX95xs58tJ0rLb2IMFIXnCU05nRQmyRvbc7+jYTXTCeIuSa9r343ivB/eb+kjLJfpAk3jc9q9Y3wweJTZewhXyS4nEZ4XFu8Jj1Do18fA0iY8Qq/z7kNBvZVD8rkfM01aKNceb0PGFw6P8zlpS/tL2D7C2eiFSf8q9RIuqTdyUD7CCfVGDgpCCPkHIYT8gxBC/kEIIf8ghJB/EELIv1EI1Xc33r/6y0NoinuvcIr4E2Pl/rt24o88bnLf+/FLb7RE/fLYMLDP+diFK9pbNxGEa9o7qBGExKvaIghfxi7sdrQ3p8ILqR9FHl7YEt9+Cy+sJmMXHoiX24QX5sRrNcIL30Y/wz3xSobwQuq/WxFeSOuLIOxor50iCNvRCzfUC/uCC8mXLgYX1tQriIMLqQ+HwYUd+eLM0MLSUS9dDC3cki/ODC08EF8dhhduqN+GwYXEH5ZGENJ/BTiwsCM/HAYXkh8OQwuP9OvcQwupz7uDC7fUV4cn4XtQIfG9w3Nq6Wb/n/V4ZsS9n59x+LuG6l5zj5UKwtx5AWrdw0ax2uRuEELIPwgh5B+EEPIPQgj5ByGE/IMQQv5BCCH/IISQfxBCyD8IIeQfhBDyD0II+QchhPyDEEL+QQgh/yCEkH8QQsg/CCHkH4QQ8g9CCPkHIYT8gxBC/kEIIf8g/EEh0bMJogmtIHrMSyyhaURN8zCiWEJdi4rmgVKxhLISRA82jyQ0rhRZTjLESEKZZyLrHMU7MY5Qu+wkzFpLsJ9GERrbXoRZZeNPMYZQ2yq7CrPWydhjDC800rXZlzDrcid1VGRgodHS3f4HcXu1sqqbmCdwYYW2qavy9ip/A3YKUMidEST2AAAAAElFTkSuQmCC") 
        //                ,fit: BoxFit.fill)
        //              ),
        //            ),
                   
        //          ),
        //          Text("Facebook")
        //        ],
        //      ),
        //      Column(
        //        children: <Widget>[
        //          InkWell(
        //                         child: Container(
        //              height: 65.0,
        //              width: 65.0,
        //              decoration: BoxDecoration(
        //                shape: BoxShape.circle,
        //                color: Colors.blue,
        //                image: DecorationImage(image: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEVCZ7L///+5w95GarM2YK80Xq+pttc+ZbFfe7s6YrCHmsmZqdA8Y7Ds8PdSdLlffr3V3OyQpNFrh8Lg5vIvW633+fyCmsxKb7fG0eier9WtutnAy+Ta4e91jsR8k8eMn8zP1ulvh8Dx9PkmVqvo7ff2SOu1AAAEYklEQVR4nO3da3uqOBSG4YDBmDYkHEStp1qn//83jqfuvWemoxGarBWu9/myP9XNfS0sIJGK7FpZ1Y0VY8k2dVXeZOL6T+6kNtTb9YMZLV3+h7B1cky8a0a69ktYWU29OUHStroKWzu+AV4ztr0I3TgneE67szCX1NsRMJlnonRj3UfPGVeKaswjPA2xEvV434XndC2aMe+kp920EeM5Vfu+sfsQQgghhBBCCCGEEPJJKWOM1lpKfc5cUkoo6g37mbQshG12+8XLe/1+6mWx3+8+GjezSyXnRXESq1SpyuhiPlmsq21bHrvudrc667ruWJafn227rQ6b9euisUWStySUFM3r6pfrfq/pEc18Oa2OfryzMLW7Lnry4Tu9JGeoin31DC+1GSrjDk/NL7UZmsn0aV9SM5R2+7wvoRmq4q3HABMSnoC9fMnspWqy6glMZIbKbPoCU5lhf2AaMyym/YFJzFDXA4ApzNA0/qfZSc5QyWfPRFOboR7yJkxBaNygfTSBvXTe+1CfyAyNGwjkPkOlhv2a4T9Ds+t3QZHODE0+FMh8hmo5eITMZygHna+lMEPZ63OLhITGlY8FD4Wc91LZ95OLfwgZz1ANufD9LWQ8Q2U/f0LIeIZm9gSk267y9Xo9/XfrD8bfFtELX95xs58tJ0rLb2IMFIXnCU05nRQmyRvbc7+jYTXTCeIuSa9r343ivB/eb+kjLJfpAk3jc9q9Y3wweJTZewhXyS4nEZ4XFu8Jj1Do18fA0iY8Qq/z7kNBvZVD8rkfM01aKNceb0PGFw6P8zlpS/tL2D7C2eiFSf8q9RIuqTdyUD7CCfVGDgpCCPkHIYT8gxBC/kEIIf8ghJB/EELIv1EI1Xc33r/6y0NoinuvcIr4E2Pl/rt24o88bnLf+/FLb7RE/fLYMLDP+diFK9pbNxGEa9o7qBGExKvaIghfxi7sdrQ3p8ILqR9FHl7YEt9+Cy+sJmMXHoiX24QX5sRrNcIL30Y/wz3xSobwQuq/WxFeSOuLIOxor50iCNvRCzfUC/uCC8mXLgYX1tQriIMLqQ+HwYUd+eLM0MLSUS9dDC3cki/ODC08EF8dhhduqN+GwYXEH5ZGENJ/BTiwsCM/HAYXkh8OQwuP9OvcQwupz7uDC7fUV4cn4XtQIfG9w3Nq6Wb/n/V4ZsS9n59x+LuG6l5zj5UKwtx5AWrdw0ax2uRuEELIPwgh5B+EEPIPQgj5ByGE/IMQQv5BCCH/IISQfxBCyD8IIeQfhBDyD0II+QchhPyDEEL+QQgh/yCEkH8QQsg/CCHkH4QQ8g9CCPkHIYT8gxBC/kEIIf8g/EEh0bMJogmtIHrMSyyhaURN8zCiWEJdi4rmgVKxhLISRA82jyQ0rhRZTjLESEKZZyLrHMU7MY5Qu+wkzFpLsJ9GERrbXoRZZeNPMYZQ2yq7CrPWydhjDC800rXZlzDrcid1VGRgodHS3f4HcXu1sqqbmCdwYYW2qavy9ip/A3YKUMidEST2AAAAAElFTkSuQmCC") 
        //                ,fit: BoxFit.fill)
        //              ),
        //            ),
                   
        //          ),
        //          Text("Facebook")
        //        ],
        //      ),
        //      Column(
        //        children: <Widget>[
        //          InkWell(
        //                         child: Container(
        //              height: 65.0,
        //              width: 65.0,
        //              decoration: BoxDecoration(
        //                shape: BoxShape.circle,
        //                image: DecorationImage(image: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEVCZ7L///+5w95GarM2YK80Xq+pttc+ZbFfe7s6YrCHmsmZqdA8Y7Ds8PdSdLlffr3V3OyQpNFrh8Lg5vIvW633+fyCmsxKb7fG0eier9WtutnAy+Ta4e91jsR8k8eMn8zP1ulvh8Dx9PkmVqvo7ff2SOu1AAAEYklEQVR4nO3da3uqOBSG4YDBmDYkHEStp1qn//83jqfuvWemoxGarBWu9/myP9XNfS0sIJGK7FpZ1Y0VY8k2dVXeZOL6T+6kNtTb9YMZLV3+h7B1cky8a0a69ktYWU29OUHStroKWzu+AV4ztr0I3TgneE67szCX1NsRMJlnonRj3UfPGVeKaswjPA2xEvV434XndC2aMe+kp920EeM5Vfu+sfsQQgghhBBCCCGEEPJJKWOM1lpKfc5cUkoo6g37mbQshG12+8XLe/1+6mWx3+8+GjezSyXnRXESq1SpyuhiPlmsq21bHrvudrc667ruWJafn227rQ6b9euisUWStySUFM3r6pfrfq/pEc18Oa2OfryzMLW7Lnry4Tu9JGeoin31DC+1GSrjDk/NL7UZmsn0aV9SM5R2+7wvoRmq4q3HABMSnoC9fMnspWqy6glMZIbKbPoCU5lhf2AaMyym/YFJzFDXA4ApzNA0/qfZSc5QyWfPRFOboR7yJkxBaNygfTSBvXTe+1CfyAyNGwjkPkOlhv2a4T9Ds+t3QZHODE0+FMh8hmo5eITMZygHna+lMEPZ63OLhITGlY8FD4Wc91LZ95OLfwgZz1ANufD9LWQ8Q2U/f0LIeIZm9gSk267y9Xo9/XfrD8bfFtELX95xs58tJ0rLb2IMFIXnCU05nRQmyRvbc7+jYTXTCeIuSa9r343ivB/eb+kjLJfpAk3jc9q9Y3wweJTZewhXyS4nEZ4XFu8Jj1Do18fA0iY8Qq/z7kNBvZVD8rkfM01aKNceb0PGFw6P8zlpS/tL2D7C2eiFSf8q9RIuqTdyUD7CCfVGDgpCCPkHIYT8gxBC/kEIIf8ghJB/EELIv1EI1Xc33r/6y0NoinuvcIr4E2Pl/rt24o88bnLf+/FLb7RE/fLYMLDP+diFK9pbNxGEa9o7qBGExKvaIghfxi7sdrQ3p8ILqR9FHl7YEt9+Cy+sJmMXHoiX24QX5sRrNcIL30Y/wz3xSobwQuq/WxFeSOuLIOxor50iCNvRCzfUC/uCC8mXLgYX1tQriIMLqQ+HwYUd+eLM0MLSUS9dDC3cki/ODC08EF8dhhduqN+GwYXEH5ZGENJ/BTiwsCM/HAYXkh8OQwuP9OvcQwupz7uDC7fUV4cn4XtQIfG9w3Nq6Wb/n/V4ZsS9n59x+LuG6l5zj5UKwtx5AWrdw0ax2uRuEELIPwgh5B+EEPIPQgj5ByGE/IMQQv5BCCH/IISQfxBCyD8IIeQfhBDyD0II+QchhPyDEEL+QQgh/yCEkH8QQsg/CCHkH4QQ8g9CCPkHIYT8gxBC/kEIIf8g/EEh0bMJogmtIHrMSyyhaURN8zCiWEJdi4rmgVKxhLISRA82jyQ0rhRZTjLESEKZZyLrHMU7MY5Qu+wkzFpLsJ9GERrbXoRZZeNPMYZQ2yq7CrPWydhjDC800rXZlzDrcid1VGRgodHS3f4HcXu1sqqbmCdwYYW2qavy9ip/A3YKUMidEST2AAAAAElFTkSuQmCC") 
        //                ,fit: BoxFit.fill)
        //              ),
        //            ),
                   
        //          ),
        //          Text("Facebook")
        //        ],
        //      ),
        //    ],
        //  )
     
            
          ],
        ),
      )
      
      
      
    );
  }
}