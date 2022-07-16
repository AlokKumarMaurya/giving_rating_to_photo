import 'package:flutter/material.dart';
class Ratingfn extends StatefulWidget {
  const Ratingfn({Key? key}) : super(key: key);

  @override
  State<Ratingfn> createState() => _RatingfnState();
}

class _RatingfnState extends State<Ratingfn> {
  var first = Colors.grey.shade400;
  var second = Colors.grey.shade400;
  var third = Colors.grey.shade400;
  var four = Colors.grey.shade400;
  var five = Colors.grey.shade400;
  String starrating = '';
  String a = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () => ratingprint(1), icon: Icon(Icons
              .star, color: first,),
          ),
          IconButton(onPressed: () => ratingprint(2), icon: Icon(Icons
              .star, color: second,)
          ),
          IconButton(onPressed: () => ratingprint(3), icon: Icon(Icons
              .star, color: third,)
          ),
          IconButton(onPressed: () => ratingprint(4), icon: Icon(Icons
              .star, color: four,)
          ),
          IconButton(onPressed: () => ratingprint(5), icon: Icon(Icons
              .star, color: five,)
          ),
          Container(
            margin: EdgeInsets.only(top: 14,right: 30),
            child:Row(
              children:[
          Text(a,style: TextStyle(color: Colors.grey.shade400,
          fontSize: 18),
          ),
          Text(" (720)",style: TextStyle(color: Colors.grey.shade400,
          fontSize: 18),
          ),
    ]
          )
          )
        ],
      ),
    );
  }

  ratingprint(int starno) {
    if (starno == 1) {
      paint1();
      setState(() {
        a = '1';
        second = Colors.grey.shade400;
        third = Colors.grey.shade400;
        four = Colors.grey.shade400;
        five = Colors.grey.shade400;
      }
      );
    }
    if (starno == 2) {
      paint2();
      setState(() {
        a = '2';
        third = Colors.grey.shade400;
        four = Colors.grey.shade400;
        five = Colors.grey.shade400;
      }
      );
    }
    if (starno == 3) {
      paint3();
      setState(() {
        a = '3';
        four = Colors.grey.shade400;
        five = Colors.grey.shade400;
      }
      );
    }
    if (starno == 4) {
      paint4();
      setState(() {
        a = '4';
        five = Colors.grey.shade400;
      }
      );
    }
    if (starno == 5) {
      paint5();
      setState(() {
        a = '5';
      }
      );
    }
  }


  paint1() {
    setState(() {
      first = Colors.yellow;
    }
    );
  }

  paint2() {
    paint1();
    setState(() {
      second = Colors.yellow;
    }
    );
  }

  paint3() {
    paint1();
    paint2();
    setState(() {
      third = Colors.yellow;
    }
    );
  }

  paint4() {
    paint1();
    paint2();
    paint3();
    setState(() {
      four = Colors.yellow;
    }
    );
  }

  paint5() {
    paint1();
    paint2();
    paint3();
    paint4();
    setState(() {
      five = Colors.yellow;
    }
    );
  }
}








