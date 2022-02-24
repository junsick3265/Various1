import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';


class customerHome extends StatelessWidget {
  const customerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var area1 = Container(
      padding: EdgeInsets.fromLTRB(5 , 5, 5, 5),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.red,
                  width: 1
              ),
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: new Center(
            child: new Text("area1",
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,),
          )),
    );
    var guideBar = Container(
      padding: EdgeInsets.fromLTRB(0 , 5, 10, 5),
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(255, 51, 51, 10),Color.fromRGBO(255, 247, 51, 3),Color.fromRGBO(64, 224, 208, 10)]
              ),
              border: Border.all(
                  color: Color.fromRGBO(31, 97, 141, 10),
                  width: 1
              ),
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ),
    );
    var area2 = Container(
      padding: EdgeInsets.fromLTRB(5 , 5, 5, 5),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(31, 97, 141, 10),
                  width: 1
              ),
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: new Center(
            child: new Text("area 2",
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,),
          )),
    );
    var area3 = Container(
      padding: EdgeInsets.fromLTRB(5 , 5, 5, 100),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(31, 97, 141, 10),
                  width: 1
              ),
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: new Center(
            child: new Text("area3",
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,),
          )),
    );
    var wait_line = Container(
      padding: EdgeInsets.fromLTRB(15 , 5, 15, 5),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(31, 97, 141, 10),
                  width: 1
              ),
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: new Center(
            child: new Text("wait_line",
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,),
          )),
    );
    return ListView(children: [
        Container(
          color: Color.fromRGBO(214, 219, 223, 10),
          child: Text("구역별 포화도",textAlign: TextAlign.center,),

      ),
      Container(child: Row( // 홈화면에서 윗부분 학식 구역 나누는 부분.
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(  // 식사 2구역
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height*0.20,
                    color: Color.fromRGBO(214, 219, 223, 10),
                    child: area2,
                  ),
                  Container( // 식사 3구역
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.height*0.20,
                    color: Color.fromRGBO(214, 219, 223, 10),
                    child: area3,
                  )
                ],
              ),
              Container( // 식사 1구역
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height*0.10,
                color: Color.fromRGBO(214, 219, 223, 10),
                child: area1,
              )
            ],
          ),
          Container(  // 대기줄 1구역
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height*0.30,
            color: Color.fromRGBO(214, 219, 223, 10),
            child: wait_line,
          ),
          Container( // 포화도 표시 가이드바.
            width: MediaQuery.of(context).size.width * 0.05,
            height: MediaQuery.of(context).size.height*0.30,
            color: Color.fromRGBO(214, 219, 223, 10),
            child: guideBar,
          )
        ],
      )),
      Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height*0.08,
        color: Colors.yellow,
        child: Text('Event1'),
      ),//Event banner
      Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height*0.08,
        color: Colors.orange,
        child: Text('Event1'),
      ),//Event banner 2
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height*0.05,
            color: Colors.grey,
            child: Text('식단'),
          ),// 학식 식단
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.orange,
                child: Text('MON'),
              ),//MON
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.orange,
                child: Text('TUE'),
              ),//Tue
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.orange,
                child: Text('WED'),
              ),//Wed
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.orange,
                child: Text('THU'),
              ),//Thu
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.orange,
                child: Text('FIR'),
              ),//Fir
            ],
          ),
        ],
      ),
    ],
    );
  }
}
