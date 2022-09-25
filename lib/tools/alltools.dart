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
  final Icon icon;
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
          border: Border.all(), borderRadius: BorderRadius.circular(12)),
      child: IconButton(
        icon: icon,
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
