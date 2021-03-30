import 'package:flutter/material.dart';


class ProgressBarCustom extends StatelessWidget {

  final String skill;
  final String porcentaje;
  final Color color;
  final double barra;

  const ProgressBarCustom({ this.skill, this.porcentaje, this.color, this.barra = 300});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( skill, style: TextStyle(color: Colors.white, fontSize: 16)),
              Text('$porcentaje%', style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
          SizedBox(height: 10.0),
          Stack(
            children: [
              Container(
              height: 9,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white
                )
              ),
              Container(
                height: 9,
                width: barra,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: this.color
                ),
              ),

            ],
            ),
          
        ],
      ),
    );
  }
}
