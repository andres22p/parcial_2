import "package:flutter/material.dart";

class GoogleButton extends StatelessWidget{
    final VoidCallback onPressed;
    double widthC=0.0;
    double heighC=0.0;
    final String text;

    _GoogleBotton(Key? key,required this.text, required this.onPressed, required this.widthC, required this.heighC));
    @override
    StatelessWidget> createState(){
        return _GoogleBotton();
    }
}
class _GoogleBotton extends State{
    @override
    Widget build(BuildContext context){
        return InkWrll(
            onTap: widget.onPressed;
            child: Container(
                margin: EdgeInsets.only(top:15, right:15, left:15);
                width: widget.widthC;
                height: widget.heighC;
                decoration: Boxdecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradiente: LinearGradient(
                        colors:[
                            Color(0xffD9DSDS),
                            Color(0xFF477A2),

                        ],

                        begin: FractionalOffset(0.2,0.0),
                        end: FractionalOffset(1.0,0.6),
                        stops: [0.0,0.5], 

                    ),
                ),
                child:Center(
                    child: Text(
                        widget.text,
                        style: TextStyle(fontSize:15, color:Colors.white)

                    ),
                ),
            ),
        );
    }
}