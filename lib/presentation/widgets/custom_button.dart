import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color _defaultBlueColor;
  final int _buttonIndex;
  final String _buttonText;
  final Function _buttonFunction;
  final bool _active;
  final bool _isLeftSide;

  const CustomButton(
      {Key key,
      @required Color defaultBlueColor,
      @required bool isLeftSide,
      @required bool active,
      @required int buttonIndex,
      @required String buttonText,
      @required Function buttonFunction})
      : _defaultBlueColor = defaultBlueColor,
        _active = active,
        _isLeftSide = isLeftSide,
        _buttonText = buttonText,
        _buttonIndex = buttonIndex,
        _buttonFunction = buttonFunction,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: _active ? Colors.white : _defaultBlueColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: _isLeftSide
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  )
                : BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    topRight: Radius.circular(8),
                  )),
        onPressed: () => _buttonFunction(_buttonIndex),
        child: Text(
          _buttonText,
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                color: _active ? _defaultBlueColor : Colors.white,
              ),
        ));
  }
}
