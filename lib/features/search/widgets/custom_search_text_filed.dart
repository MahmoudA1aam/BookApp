import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors_app.dart';
import '../../../core/theming/text_app.dart';

class CustomSearchTextFiled extends StatefulWidget {
  const CustomSearchTextFiled({super.key});

  @override
  State<CustomSearchTextFiled> createState() => _CustomSearchTextFiledState();
}

class _CustomSearchTextFiledState extends State<CustomSearchTextFiled> {
  bool textEmpty = true;

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        Expanded(
          child: SizedBox(
            height: 65.h,
            child: TextField(
              style: TextApp.font16witheMedium,
              controller: searchController,
              cursorRadius: const Radius.circular(10),
              canRequestFocus: true,
              cursorColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  value.isEmpty ? textEmpty = true : textEmpty = false;

                  setState(() {});
                });
              },
              decoration: InputDecoration(
                suffixIcon: textEmpty == true
                    ? IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_sharp,
                          size: 22,
                          color: ColorsApp.witheGray,
                        ))
                    : SizedBox(
                        width: 100.w,
                        height: 65.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  setState(() {
                                    searchController.clear();
                                    textEmpty=true;
                                  });
                                },
                                icon: const Icon(
                                  size: 22,
                                  Icons.clear,
                                  color: Colors.white,
                                )),
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(
                                  size: 22,
                                  Icons.search_sharp,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                hintText: "search",
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: ColorsApp.witheGray),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
