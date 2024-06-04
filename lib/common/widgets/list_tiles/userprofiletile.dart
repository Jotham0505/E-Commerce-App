import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: Image(
          image: AssetImage(TImages.user),
          width: 50,
          height: 50,
        ),
      ),
      title: Text(
        'Jotham Cheeran',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold
        )
      ),
      subtitle: Text(
        'jothamcheeran@gmail.com',
        style: Theme.of(context).textTheme.bodySmall
      ),
     trailing: IconButton(onPressed: (){}, icon: Icon(Iconsax.edit,color: TColors.white,)),
    );
  }
}