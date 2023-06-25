import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_flutter/constant/constant.dart';

typedef void ITextFieldCallBack(String content);

enum ITextInputType {
  text,
  multiline,
  number,
  phone,
  datetime,
  emailAddress,
  url,
  password
}

class ITextField extends StatefulWidget {
  final ITextInputType keyboardType;
  final int maxLines;
  final int? maxLength;
  final String? hintText;
  final TextStyle? hintStyle;
  final ITextFieldCallBack fieldCallBack;
  final Icon? deleteIcon;
  final InputBorder? inputBorder;
  final Widget? prefixIcon;
  final TextStyle? textStyle;
  final FormFieldValidator<String>? validator;

  const ITextField({
    Key? key,
    ITextInputType keyboardType = ITextInputType.text,
    this.maxLines = 1,
    this.maxLength,
    this.hintText,
    this.hintStyle,
    required this.fieldCallBack,
    this.deleteIcon,
    this.inputBorder,
    this.textStyle,
    this.prefixIcon,
    this.validator,
  })  : assert(maxLines == null || maxLines > 0),
        assert(maxLength == null || maxLength > 0),
        keyboardType = maxLines == 1 ? keyboardType : ITextInputType.multiline,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _ITextFieldState();
}

class _ITextFieldState extends State<ITextField> {
  String _inputText = "";
  bool _hasDeleteIcon = false;
  bool _isNumber = false;
  bool _isPassword = false;

  TextInputType _getTextInputType() {
    switch (widget.keyboardType) {
      case ITextInputType.text:
        return TextInputType.text;
      case ITextInputType.multiline:
        return TextInputType.multiline;
      case ITextInputType.number:
        _isNumber = true;
        return TextInputType.number;
      case ITextInputType.phone:
        _isNumber = true;
        return TextInputType.phone;
      case ITextInputType.datetime:
        return TextInputType.datetime;
      case ITextInputType.emailAddress:
        return TextInputType.emailAddress;
      case ITextInputType.url:
        return TextInputType.url;
      case ITextInputType.password:
        _isPassword = true;
        return TextInputType.text;
    }
  }

  // 输入范围
  List<TextInputFormatter>? _getTextInputFormatter() {
    return _isNumber
        ? <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
          ]
        : null;
  }

  @override
  Widget build(BuildContext context){
    TextEditingController _controller = TextEditingController.fromValue(
      TextEditingValue(
        text: _inputText,
        selection: TextSelection.fromPosition(
          TextPosition(
            affinity: TextAffinity.downstream,
            offset: _inputText.length
          )
        )
      )
    );
    TextField textField = TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintStyle: widget.hintStyle,
        counterStyle: TextStyle(color: Colors.white),
        hintText: widget.hintText,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.lightGreenAccent, width: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.0),
            topRight: Radius.circular(1.0)
          )
        ),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.yellowAccent, width: 0.5),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(1.0),
                topRight: Radius.circular(1.0)
            )
        ),
        fillColor: Colors.transparent,
        filled: true,
        suffixIcon: _hasDeleteIcon ? Container(
          width: 20,
          height: 20,
          child: IconButton(
            alignment: Alignment.center,
            padding: EdgeInsets.all(0),
            iconSize: 18,
            icon: widget.deleteIcon??Image.asset(Constant.ASSETS_IMG + "icon_close.ong", width: 20, height: 20),
            onPressed: (){
              setState(() {
                _inputText = "";
                _hasDeleteIcon = (_inputText.isNotEmpty);
                widget.fieldCallBack(_inputText);
              });
            },
          ),
        ) : const Text(""),
      ),
      onChanged: (str){
        setState(() {
          _inputText = str;
          _hasDeleteIcon = (_inputText.isNotEmpty);
          widget.fieldCallBack(_inputText);
        });
      },
      keyboardType: _getTextInputType(),
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      inputFormatters: _getTextInputFormatter(),
      style: widget.textStyle,
      obscureText: _isPassword,
    );
    return textField;
  }

}
