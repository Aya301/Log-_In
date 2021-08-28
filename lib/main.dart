import 'package:flutter/material.dart';
import 'home.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      )
  );
}

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final urlImage=
        'https://www.bibalex.org/SCIplanet/Attachments/Article/MediumImage/TKcWzpXYQ3_20170518143103137.jpg';
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          width: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(urlImage),
                fit: BoxFit.cover,
              )
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 80)),
              Text('Welcome',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text('Welcome to the space application',
                style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(
                height: 350,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 45)),
                  Container(
                    height: 60,
                    width: 140,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade800,
                      elevation: 7.0,
                      child: FlatButton(
                        onPressed: (){
                          showDialog(context: context,
                              builder: (context)
                              {
                                return SingleChildScrollView(
                                  child: AlertDialog(
                                    backgroundColor: Colors.grey.shade200,
                                    title: Text('Log In',
                                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                    content: Container(
                                      height: 300,
                                      width: 280,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.email_sharp,color: Colors.blue.shade800),
                                                  hintText: 'Email',
                                                  border: InputBorder.none
                                              ),
                                            ),
                                            margin: EdgeInsets.symmetric(vertical: 10),
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                                            width: 350,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(29),
                                                color: Colors.white
                                            ),
                                          ),
                                          Text('Required',style: TextStyle(fontSize: 20,color: Colors.blue.shade800),),

                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.lock,color: Colors.blue.shade800),
                                                  hintText: 'Password',
                                                  border: InputBorder.none
                                              ),
                                            ),
                                            margin: EdgeInsets.symmetric(vertical: 10),
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                                            width: 350,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(29),
                                                color: Colors.white
                                            ),
                                          ),
                                          Text('Required',style: TextStyle(fontSize: 20,color: Colors.blue.shade800),),
                                          Padding(padding: EdgeInsets.only(top: 30)),
                                          RaisedButton(
                                            onPressed: (){
                                              Navigator.pushReplacement(context,
                                                MaterialPageRoute(builder: (context)=> page() ),
                                              );
                                            },
                                            child: Text('Sign in',style: TextStyle(fontSize: 20,color: Colors.white),),
                                            color: Colors.blue.shade800,
                                          )
                                        ],
                                      ),
                                    ) ,
                                  ),
                                );
                              }
                          );
                        },
                        child: Text('Log In',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ) ,
                  ),
                  Padding(padding: EdgeInsets.only(left: 35)),
                  Container(
                    height: 60,
                    width: 140,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade700,
                      elevation: 7.0,
                      child: FlatButton(
                        onPressed: (){
                          showDialog(context: context,
                              builder: (context)
                              {
                                return SingleChildScrollView(
                                  child: AlertDialog(
                                    backgroundColor: Colors.grey.shade200,
                                    title: Text('Sign Up',
                                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                    content: Container(
                                      height: 400,
                                      width: 280,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.email_sharp,color: Colors.grey.shade700),
                                                  hintText: 'User Name',
                                                  border: InputBorder.none
                                              ),
                                            ),
                                            margin: EdgeInsets.symmetric(vertical: 10),
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                                            width: 350,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(29),
                                                color: Colors.white
                                            ),
                                          ),
                                          Text('Required',style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),

                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.email_sharp,color: Colors.grey.shade700),
                                                  hintText: 'Email',
                                                  border: InputBorder.none
                                              ),
                                            ),
                                            margin: EdgeInsets.symmetric(vertical: 10),
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                                            width: 350,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(29),
                                                color: Colors.white
                                            ),
                                          ),
                                          Text('Required',style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),

                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.lock,color: Colors.grey.shade700),
                                                  hintText: 'Password',
                                                  border: InputBorder.none
                                              ),
                                            ),
                                            margin: EdgeInsets.symmetric(vertical: 10),
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                                            width: 350,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(29),
                                                color: Colors.white
                                            ),
                                          ),
                                          Text('Required',style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
                                          Padding(padding: EdgeInsets.only(top: 30)),
                                          RaisedButton(
                                            onPressed: (){
                                              Navigator.pushReplacement(context,
                                                MaterialPageRoute(builder: (context)=> page() ),
                                              );
                                            },
                                            child: Text('Sign in',style: TextStyle(fontSize: 20,color: Colors.white),),
                                            color: Colors.grey.shade700,
                                          )

                                        ],
                                      ),
                                    ) ,
                                  ),
                                );
                              }
                          );
                        },
                        child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ) ,
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                height: 60,
                width: 230,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  elevation: 7.0,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text('Continue with Google',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}