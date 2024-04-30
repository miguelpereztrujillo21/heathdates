import 'package:flutter/material.dart';

class InputFieldBox extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  const InputFieldBox({super.key, required this.hintText, this.icon});
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(20));

    var inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      hintText: hintText,
      filled: true,
      fillColor: Colors.white,
      suffixIcon: icon != null
          ? IconButton(
              icon: icon!,
              onPressed: () {},
            )
          : null,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
      child: TextFormField(
        onTapOutside: (event) => focusNode.unfocus(),
        focusNode: focusNode,
        decoration: inputDecoration,
        controller: textController,
      ),
    );
  }
}
