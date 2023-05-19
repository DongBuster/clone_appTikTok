import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class TextContentVideo extends StatefulWidget {
  final String text;

  TextContentVideo({required this.text});

  @override
  _TextContentVideoState createState() => _TextContentVideoState();
}

class _TextContentVideoState extends State<TextContentVideo> {
  bool _isExpanded = false;
  final int _maxLines = 3;
  int actualLines = 0;
  final key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final renderObject = key.currentContext!.findRenderObject()!;
        final textSpan =
            TextSpan(text: widget.text, style: const TextStyle(fontSize: 14));
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
          // maxLines: 3,
          // overflow: ,
        );
        textPainter.layout(maxWidth: renderObject.paintBounds.width);
        actualLines = textPainter.computeLineMetrics().length;

        print('Số dòng thực tế của Text là: $actualLines');
        print('$_maxLines');
      });

      return SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Saleall',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Text(
              key: key,
              widget.text,
              maxLines: _isExpanded ? null : _maxLines,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            actualLines > _maxLines
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: Text(
                      _isExpanded ? 'Ẩn bớt' : 'Xem thêm',
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                : const SizedBox(),

            //
            const SizedBox(height: 5),
            Text(
              '♫ Saleall Âm thanh Gốc',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    });
  }
}
