import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/images/t_rounded_image.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:yt_ecommerce_admin_panel/utils/device/device_utility.dart';

class THeader extends StatelessWidget implements PreferredSizeWidget {
  const THeader({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: TColors.white,
        border: Border(bottom: BorderSide(color: TColors.grey, width: 1)),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.md, vertical: TSizes.sm),
      child: AppBar(

          /// Mobile View
          leading: !TDeviceUtils.isDesktopScreen(context)
              ? IconButton(
                  onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                  icon: const Icon(Iconsax.menu))
              : null,

          /// Search Field
          title: TDeviceUtils.isDesktopScreen(context)
              ? SizedBox(
                  width: 400,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.search_normal),
                      hintText: 'Search anything...',
                    ),
                  ))
              : null,

          /// Action Buttons
          actions: [
            // search Icon on mobile view
            if (!TDeviceUtils.isDesktopScreen(context))
              IconButton(
                  icon: const Icon(Iconsax.search_normal), onPressed: () {}),

            //Notification Icon on mobile view
            IconButton(
                icon: const Icon(Iconsax.notification), onPressed: () {}),
            const SizedBox(width: TSizes.spaceBtwItems / 2),

            //User Data
            Row(
              children: [
                const TRoundedImage(
                  width: 40,
                  padding: 2,
                  height: 40,
                  imageType: ImageType.asset,
                  image: TImages.user,
                ),
                const SizedBox(width: TSizes.sm),

                //Name and Email
                if (!TDeviceUtils.isMobileScreen(context))
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ashutosh',
                          style: Theme.of(context).textTheme.titleLarge),
                      Text('ashutosh@gmail.com',
                          style: Theme.of(context).textTheme.labelMedium),
                    ],
                  )
              ],
            )
          ]),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}
