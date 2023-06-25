import 'package:flutter/material.dart';

import '../../constant/constant.dart';

typedef void ITextFieldCallBack(String content);

class AccountEditText extends StatefulWidget {
  final ITextFieldCallBack contentStrCallBack;
  const AccountEditText({
    Key? key,
    required this.contentStrCallBack,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AccountEditTextState();

}


String _inputAccount = "";


class _AccountEditTextState extends State<AccountEditText> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController.fromValue(
        TextEditingValue(
            text: _inputAccount,
            selection: TextSelection.fromPosition(TextPosition(
                affinity: TextAffinity.downstream,
                offset: _inputAccount.length))));
    return Container(
        child: Theme(
          data: ThemeData(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent), //去除水波纹效果
          child: TextField(
            controller: _controller,
            style: const TextStyle(color: Color(0xff333333), fontSize: 14),
            decoration: InputDecoration(
              counterText: "",
              hintText: "手机号或者邮箱",
              contentPadding: const EdgeInsets.only(left: 0, top: 14, bottom: 14),
              hintStyle: const TextStyle(color: Color(0xff8C8C8C), fontSize: 14),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffDADADA))),
              fillColor: Colors.transparent,
              filled: true,
              // prefixIcon: widget.prefixIcon,
              suffixIcon: _controller.text.isNotEmpty
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
                      widget.contentStrCallBack(_inputAccount);
                    });
                  },
                ),
              )
                  : Text(''),
            ),
            onChanged: (str) {
              setState(() {
                _inputAccount = str;
                widget.contentStrCallBack(_inputAccount);
              });
            },
            keyboardType: TextInputType.text,
            maxLength: 20,
            maxLines: 1,
            //inputFormatters: _getTextInputFormatter(),
            // style: widget.textStyle,
            //  obscureText: _isPassword,
          ),
        ));
  }
}
