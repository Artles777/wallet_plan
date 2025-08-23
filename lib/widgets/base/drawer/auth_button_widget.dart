import "package:flutter/material.dart";
import "package:wallet_plan/helpers/variables/colors.dart";

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        foregroundColor: Colors.black,
        backgroundColor: PrimaryColors.primary90,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle_outlined),
          SizedBox(width: 8.0),
          Text("Вход/Регистрация"),
        ],
      ),
    );
  }
}
