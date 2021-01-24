import 'package:flutter/material.dart';

enum BM_TYPE {
  SIMPLE,
  GENERAL,
  ARTIFICIAL_PERSON,
}

class ValueAddressTax extends StatefulWidget {
  @override
  _ValueAddressTaxState createState() => _ValueAddressTaxState();
}

class _ValueAddressTaxState extends State<ValueAddressTax> {
  bool _isShowPurchaseData = false;
  List<Map> _bm_a_simple_item = [
    {
      'business': '전기,가스,증기 및 수도사업',
      'basic_taxation': 10.0,
      'value_added_rate': 0.05,
    },
    {
      'business': '소매, 재생용재료 수집 및 판매업, 음식점',
      'basic_taxation': 10.0,
      'value_added_rate': 0.1,
    },
    {
      'business': '제조업, 농업, 임입 및 어업, 숙박업, 운수 및 통신업',
      'basic_taxation': 10.0,
      'value_added_rate': 0.2,
    },
    {
      'business': '건설업, 부동산임대업, 기타 서비스업',
      'basic_taxation': 10.0,
      'value_added_rate': 0.3,
    }
  ];

  BM_TYPE _bm_type;
  int _bm_simple_item_selected = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bm_type = BM_TYPE.SIMPLE;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          '부가가치세 계산기',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.blue[100],
          child: Column(
            children: [
              _buildTop(context),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '올해 총 예상 매출',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '예) 1000000',
                        labelText: '총 예상 금액',
                        suffixText: '원',
                        prefixText: '￦',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        onPressed: () {
                          setState(() {
                            _isShowPurchaseData = !_isShowPurchaseData;
                          });
                        },
                        color: Colors.blue[900],
                        child: Text(
                          '(선택)매입자료 입력',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _isShowPurchaseData,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('*입력 선택'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '예) 1000000',
                              labelText: '대입(공급가액)',
                              suffixText: '원',
                              prefixText: '￦',
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                        color: Colors.blue[900],
                        onPressed: () {},
                        elevation: 0,
                        hoverElevation: 0,
                        highlightElevation: 0,
                        child: Text(
                          '보러가기 >',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildTop(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '사업자 유형',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          _buildSelectBmType(),
          (_bm_type == BM_TYPE.SIMPLE)
              ? _buildBmTypeItem()
              : Container(
                  height: 100,
                  child: Center(
                    child: Text('기본 과세율 10%'),
                  ),
                ),
        ],
      ),
    );
  }

  Container _buildBmTypeItem() {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _bm_a_simple_item.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _bm_simple_item_selected = index;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      color: (_bm_simple_item_selected == index)
                          ? Colors.blue[900]
                          : Colors.grey[50],
                      child: Center(
                        child: Text(
                          _bm_a_simple_item[index]['business'],
                          style: TextStyle(
                              color: (_bm_simple_item_selected == index)
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )),
                  Opacity(
                    opacity: (_bm_simple_item_selected == index) ? 1.0 : 0.0,
                    child: Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Column(
                        children: [
                          Text(
                              '기본 과세 ${_bm_a_simple_item[index]['basic_taxation']}%'),
                          Text(
                              '* 부가가치율 ${_bm_a_simple_item[index]['value_added_rate']}%'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container _buildSelectBmType() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _build_bm_item(
              name: '간이',
              type: BM_TYPE.SIMPLE,
              onPressed: () {
                setState(() {
                  if (_bm_type != BM_TYPE.SIMPLE) _bm_type = BM_TYPE.SIMPLE;
                });
              }),
          _build_bm_item(
              name: '일반',
              type: BM_TYPE.GENERAL,
              onPressed: () {
                setState(() {
                  if (_bm_type != BM_TYPE.GENERAL) _bm_type = BM_TYPE.GENERAL;
                });
              }),
          _build_bm_item(
              name: '법인',
              type: BM_TYPE.ARTIFICIAL_PERSON,
              onPressed: () {
                setState(() {
                  if (_bm_type != BM_TYPE.ARTIFICIAL_PERSON)
                    _bm_type = BM_TYPE.ARTIFICIAL_PERSON;
                });
              }),
        ],
      ),
    );
  }

  FlatButton _build_bm_item({String name, BM_TYPE type, Function onPressed}) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        name,
        style: TextStyle(
          color: (_bm_type == type) ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      color: (_bm_type == type) ? Colors.blue[900] : Colors.white,
    );
  }
}
