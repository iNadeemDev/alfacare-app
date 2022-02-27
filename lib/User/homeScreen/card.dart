import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MultipleSelectionCard extends StatefulWidget {
  const MultipleSelectionCard(
      {Key? key,
      required this.iconsWid,
      required this.icon,
      required this.textWid,
      required this.textsWid})
      : super(key: key);
  final String textWid;
  final IconData icon;
  final String textsWid;
  final IconData iconsWid;

  @override
  _MultipleSelectionCardState createState() => _MultipleSelectionCardState();
}

class _MultipleSelectionCardState extends State<MultipleSelectionCard> {
  late final List<bool> _toggled = <bool>[];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 23.h,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          margin: EdgeInsets.all(2.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 7.h,
                child: Icon(widget.icon,
                    color: Colors.purple.shade900, size: 35.0),
              ),
              SizedBox(
                height: 3.h,
                child: Text(
                  widget.textWid,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
                child: Text(
                  widget.textsWid,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(widget.iconsWid),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
