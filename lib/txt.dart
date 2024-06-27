import 'package:flutter/cupertino.dart';

Text myText(
  String txt, {
  int? maxLines,
  TextOverflow? textOverflow,
}) {
  return Text(
    txt,
    maxLines: maxLines,
    overflow: textOverflow,
  );
}
