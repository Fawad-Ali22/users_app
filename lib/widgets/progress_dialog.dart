import 'package:flutter/material.dart';

class ProgressDialog extends StatefulWidget 
{

  String? message;
  ProgressDialog ({Key? key, this.message}) : super(key: key);

  @override
  _ProgressDialogState createState() => _ProgressDialogState();
}

class _ProgressDialogState extends State<ProgressDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black54,
      child: Container(
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: const [
              SizedBox(width: 6.0,),
             CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                
              ),

              SizedBox(width: 26.0,),
              
              Text(
                "Please wait!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,

                ),
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}
