import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gobuzy_assignment/Widgets/product_box.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<String> images = [
    'Assets/ban1.png',
    'Assets/ban2.png',
  ];

  List<String> brandImages = [
    'Assets/levis.png',
    'Assets/puma.png',
    'Assets/HM.png',
    'Assets/deisel.png',
  ];

  List<String> categoryImages = [
    'Assets/cat1.png',
    'Assets/cat2.png',
    'Assets/cat3.png',
    'Assets/cat4.png',
  ];

  List<String> productImages = [
    'Assets/men1.png',
    'Assets/men3.png',
    'Assets/men4.png',
    'Assets/men5.png',
  ];

  List<String> tabs = [
  'Home','Cart','Notify','Account'
  ];
  Map tabVal = {'Home':true,'Cart':false,'Notify':false,'Account':false};
  Widget _buildAppBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 50.0,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Text(
                'BopTee',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'What are you looking for Today?'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSlider(BuildContext context, List<String> images) {
    return Container(
      height: 170.0,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: images
            .map((e) => Container(
          width: MediaQuery.of(context).size.width*.8,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover)),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildBrandsRow(BuildContext context,List<String> images){
    return Container(
      height: 100.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: images.map((e) => Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(e)
              )
            ),
          )).toList(),
        ),
      ),
    );
  }

  Widget _buildDivider(BuildContext context){
    return Container(
      height: 3.0,
      width: MediaQuery.of(context).size.width,
      color: Color(0xffEFEFEF),
    );
  }

  Widget _buildVAHeader(BuildContext context, String title){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color(0xff040F4F),
                fontSize: 18.0,
                fontWeight: FontWeight.bold
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff737EC4)
            ),
            child: Text('View All',
            style: TextStyle(
              color: Colors.white
            ),),
          )
        ],
      ),
    );
  }

  Widget _buildCategoriesBox(BuildContext context, List<String> images){
    return Container(
      height: 100.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: images.map((e) => Container(
            height: 150.0,
            width: 100.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(e)
                )
            ),
          )).toList(),
        ),
      ),
    );
  }

  Widget _buildProductRow(BuildContext context,List<String> images){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: images.map((e) => ProductBox(
            image: e,
            star: 5,
          )).toList(),
        ),
      ),
    );
  }

  Widget _buildTab(String title,bool isActive,IconData icon){
    return Container(
      height: 34.0,
      width: 120.0,
      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),

      decoration: BoxDecoration(
          color: !isActive?Colors.white:Color(0xff040F4F),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon,
            color: isActive?Colors.white:Colors.grey,
          ),
          isActive?Text(title,
          style: TextStyle(
            color: isActive?Colors.white:Color(0xff040F4F)
          ),):Container(),
        ],
      ),
    );
  }

  Widget _buildTabSwitcher(BuildContext context,List<String>tabs,tabVal){
    return Container(
      height: 70.0,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: tabs.map((e) => GestureDetector(
            onTap: (){
              tabVal['Home'] = false;
              tabVal['Cart'] = false;
              tabVal['Account'] = false;
              tabVal['Notify'] = false;
              setState(() {
                tabVal[e] = true;
              });
            },
              child: _buildTab(e, tabVal[e], Icons.home))).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .5,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff040F4F),
                                    image: DecorationImage(
                                        image: AssetImage('Assets/mask.png'))),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                      ),
                      // Content
                      Container(
                        height: MediaQuery.of(context).size.height * .55,
                        child: Column(
                          // _buildAppBar(context),
                          children: [
                            _buildAppBar(context),
                            _buildSearchField(context),
                            _buildSlider(context,images),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Our Top Most Brands',
                                    style: TextStyle(
                                      color: Color(0xff040F4F),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Icon(Icons.workspaces_filled,
                                  color: Color(0xff040F4F),)
                                ],
                              ),
                            ),
                            _buildBrandsRow(context,brandImages),
                          ],
                        ),
                      ),
                    ],
                  ),
                  _buildDivider(context),

                  _buildVAHeader(context, 'Categories'),
                  _buildCategoriesBox(context,categoryImages),
                  _buildTabSwitcher(context,tabs,tabVal),
                  _buildDivider(context),

                  _buildVAHeader(context, 'Hot Selling Products'),
                  _buildProductRow(context, productImages),
                  _buildDivider(context),

                  _buildVAHeader(context, 'Recently Added'),
                  _buildProductRow(context, productImages)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
