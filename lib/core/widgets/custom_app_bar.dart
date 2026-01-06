import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:posts_app/core/utils/app_color.dart';
import 'package:posts_app/core/utils/text_style.dart';



AppBar customAppBar(
  BuildContext context, {
  required String title,
  bool isBack = true,
  bool icon = true,
}) {
  return AppBar(
    backgroundColor: AppColor.backgroundColor,
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold24.copyWith(),
    ),
    leading: Visibility(
      visible: isBack,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          borderRadius: BorderRadius.circular(25),
          splashColor: AppColor.primaryColor.withAlpha(30),
          highlightColor: AppColor.primaryColor.withAlpha(15),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.primaryColor,
            )
          ),
        ),
      ),
    ),
    actions: [
      Visibility(
        visible: icon,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [       
              const SizedBox(width: 15),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    
                  },
                  borderRadius: BorderRadius.circular(25),
                  splashColor: AppColor.primaryColor.withAlpha(30),
                  highlightColor: AppColor.primaryColor.withAlpha(15),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/svg/notification.svg',
                      color: AppColor.primaryColor,
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
