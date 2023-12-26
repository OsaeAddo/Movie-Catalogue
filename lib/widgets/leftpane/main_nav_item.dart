import "package:flutter/material.dart";

class MainNavItem extends StatelessWidget {
  //const MainNavItem({super.key});
  final String title;
  final bool isSelected;
  final VoidCallbackAction action;
  final IconData? icon;
  const MainNavItem(this.title, this.icon, this.isSelected, this.action,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: MaterialButton(
        color: isSelected ? Colors.deepPurple.withOpacity(0.15) : null,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        onPressed: () => action,
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(fontSize: 20, color: Colors.white,))
        ]),
      ),
    );
  }
}
