import 'package:flutter/material.dart';

import '../../constant/constant.dart';

typedef void ITextFieldCallBack(String content);

//登陆注册界面edittext输入框
class PwdEditText extends StatefulWidget {
  final ITextFieldCallBack contentStrCallBack;

/* AccountEditText({Key key, this.contentStrCallBack}) : super(key: key);*/

  PwdEditText({
    Key? key,
    required this.contentStrCallBack,
  }) : super(key: key);

  @override
  _PwdEditTextState createState() => _PwdEditTextState();
}

String _inputAccount = "";
bool _isShowDelete = false;

class _PwdEditTextState extends State<PwdEditText> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController.fromValue(
        TextEditingValue(
            text: _inputAccount,
            selection: TextSelection.fromPosition(TextPosition(
                affinity: TextAffinity.downstream,
                offset: _inputAccount.length))));
    return Container(
      child: TextField(
        controller: _controller,
        style: const TextStyle(color: Color(0xff333333), fontSize: 14),
        decoration: InputDecoration(
          counterText: "",
          hintText: "请输入密码",
          contentPadding: const EdgeInsets.only(left: 0, top: 14, bottom: 14),
          hintStyle: const TextStyle(color: Color(0xff8C8C8C), fontSize: 14),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.orange)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDADADA))),
          fillColor: Colors.transparent,
          filled: true,
          suffixIcon: _isShowDelete
              ? Container(
                  width: 14.0,
                  height: 14.0,
                  child: IconButton(
                    padding: const EdgeInsets.all(0.0),
                    iconSize: 14.0,
                    icon: Image.asset(
                      '${Constant.ASSETS_IMG}icon_et_delete.png',
                      width: 14.0,
                      height: 14.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _inputAccount = "";
                        _isShowDelete = (_inputAccount.isNotEmpty);
                        widget.contentStrCallBack(_inputAccount);
                      });
                    },
                  ),
                )
              : const Text(''),
        ),
        onChanged: (str) {
          setState(() {
            _inputAccount = str;
            _isShowDelete = (_inputAccount.isNotEmpty);
            widget.contentStrCallBack(_inputAccount);
          });
        },
        keyboardType: TextInputType.text,
        maxLength: 20,
        maxLines: 1,
        obscureText: true,
        //inputFormatters: _getTextInputFormatter(),
        // style: widget.textStyle,
        //  obscureText: _isPassword,
      ),
    );
  }
}
