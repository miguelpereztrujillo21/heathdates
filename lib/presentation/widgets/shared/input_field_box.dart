import 'package:flutter/material.dart';
import 'package:healthdates/constants/strings.dart';

class InputFieldBox extends StatefulWidget {
  final String hintText;
  final Icon? icon;
  final Icon? onClickIcon;
  final bool obscureText;
  const InputFieldBox(
      {super.key,
      required this.hintText,
      this.icon,
      this.onClickIcon,
      required this.obscureText});

  @override
  State<StatefulWidget> createState() => _InputFieldBoxState();
}

class _InputFieldBoxState extends State<InputFieldBox> {
  bool _obscureText = false;
  final textController = TextEditingController();
  bool _validate = false;
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(20));

    var inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      hintText: widget.hintText,
      filled: true,
      fillColor: Theme.of(context).colorScheme.secondaryContainer,
      suffixIcon: widget.icon != null
          ? IconButton(
              icon: _obscureText ? widget.onClickIcon! : widget.icon!,
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            )
          : null,
      errorText: _validate ? Strings.errorEmptyField : null,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
      child: TextFormField(
        onTapOutside: ((event) {
          focusNode.unfocus();
        }),
        focusNode: focusNode,
        decoration: inputDecoration,
        controller: textController,
        obscureText: _obscureText,
        onChanged: (value) {
          setState(() {
            _validate = value.isEmpty;
          });
        },
      ),
    );
  }
}
