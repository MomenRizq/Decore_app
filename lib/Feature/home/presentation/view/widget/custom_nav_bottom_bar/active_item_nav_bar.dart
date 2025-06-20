import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
 
 class ActiveItem extends StatelessWidget {
    const ActiveItem({super.key, required this.image});
    final String image;
 
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(5.0),
       child: Center(
         child: SizedBox(
          width: 25,
           child: Column(
             children: [
               // ignore: deprecated_member_use
               SvgPicture.asset(image , color: Colors.grey,),
               const SizedBox(height: 2,),
               Container(
                 height: 2,
                 color: Colors.grey,)
             ],
           ),
         ),
       ),
     );
   }
 }