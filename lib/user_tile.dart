import 'package:flutter/material.dart';
class UserTile extends StatelessWidget {
  final String text;
  final void Function()?onTap;
  const UserTile({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(Icons.person),
            Text(text,style: TextStyle(fontSize: 20,fontFamily: "BUXTONSKETCH",),),
          ],
        ),
      ),
    );
  }
}
