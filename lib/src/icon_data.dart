import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UntitledIcon extends StatelessWidget {
  final String name;
  final double size;
  final Color? color;

  const UntitledIcon(this.name, {super.key, this.size = 24.0, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'packages/untitled_ui_icons/assets/icons/$name.svg',
      width: size,
      height: size,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
