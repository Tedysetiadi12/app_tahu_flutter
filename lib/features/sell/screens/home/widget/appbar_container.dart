import 'package:app_tahhu/common/widgets/icon_cicle/counter_icon_cart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/colors.dart';

class TAppBarUser extends StatelessWidget {
  const TAppBarUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hallo, Sahabat Uco",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .apply(color: const Color(0xFFE7E7E7))),
          Text("Tedi Setiadi",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.textWhite)),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          color: Colors.white,
        )
      ],
    );
  }
}
