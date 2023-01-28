import 'package:flutter/material.dart';

class IconContainerAuthWidget extends StatelessWidget {
  const IconContainerAuthWidget({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    const size = 30.0;
    const colorB = Color.fromRGBO(13, 29, 47, 1);
    const widthHeight = 150.0;
    return Padding(
      padding: EdgeInsets.all(size),
      child: Container(
            height:widthHeight,
            width:widthHeight,
            decoration:BoxDecoration(
             
              //color:Colors.red,
              //borderRadius:BorderRadius.circular(50),
              shape: BoxShape.circle,
              border:Border.all(
              color:Color.fromRGBO(204, 204, 204, 1),
              width:5
              ),
             
            ),
            child:
            Center(child:
              Image.asset(
                url,
                width: size,
                height: size,
                fit: BoxFit.cover,
                color: colorB,
              ),
            )),
      );
  }
}
