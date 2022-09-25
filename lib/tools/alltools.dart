import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String name;
  final Function call;
  const BlackButton({
    required this.name,
    required this.call,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        call();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          minimumSize: MaterialStateProperty.all(const Size(330, 56))),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Urbanist',
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class NewIcon extends StatelessWidget {
  final Widget icon;
  final Function onPressed;

  const NewIcon({
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 56,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: IconButton(
        icon: icon,
        hoverColor: Colors.white,
        splashColor: Colors.white,
        highlightColor: Colors.white,
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}

class GreyButton extends StatelessWidget {
  final String label;
  final bool secure;
  const GreyButton({
    this.secure = false,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
          obscureText: secure,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(50, 218, 218, 218),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 1, color: Colors.grey)),
            label: Text(
              label,
              style: const TextStyle(
                fontStyle: FontStyle.normal,
                fontFamily: 'Urbanist-m',
                color: Color.fromARGB(100, 131, 145, 161),
              ),
            ),
          )),
    );
  }
}
