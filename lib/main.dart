import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:capstone11/style.dart' as style;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
      theme: style.theme,
      home:MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;
  var data = 0;
  //getData() async{
  //  var result = await http.get(Uri.parse('https://codingapple1.github.io/app/data.json'));
  //  var result2 = jsonDecode(result.body);
  //  setState(() {
  //    data = result2;
  //  });
  //}

  @override
  void initState() {
    super.initState();
    //getData();
    print(data);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('학식 도우미',textAlign: TextAlign.left),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined),iconSize: 40,)],),
      body: [Customer(inst : data),Seller(inst : data)][tab],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (i){
          setState(() {
            tab = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: '학생'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: '학생식당')
        ],),
    );
  }
}

class Seller extends StatelessWidget {
  const Seller({Key? key,this.inst}) : super(key: key);
  final inst;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Customer extends StatelessWidget {
  const Customer({Key? key,this.inst}) : super(key: key);
  final inst;
  isNotEmpty(){
    if (inst==null){return 0;}
    else {return 1;}
  }
  @override
  Widget build(BuildContext context) {
    print(inst);
    if (inst.isNotEmpty) {
      return ListView.builder(itemCount: 3, itemBuilder: (c, i){
        return Column(
          children: [
            Image.network(inst[i]['image']),
            Container(
              constraints: BoxConstraints(maxWidth: 600),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('좋아요 '),
                      Text(inst[i]['likes'].toString()),
                    ],
                  ),
                  Text(inst[i]['user']),
                  Text(inst[i]['content']),
                ],
              ),
            )
          ],
        );
      });
    }
    else {return Text('로딩중');}

  }
}


class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
            tooltipBehavior: _tooltip,
            series: <ChartSeries<_ChartData, String>>[
              BubbleSeries<_ChartData, String>(
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: 'Gold',
                  color: Color.fromRGBO(8, 142, 255, 1))
            ]));
  }
}
class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
