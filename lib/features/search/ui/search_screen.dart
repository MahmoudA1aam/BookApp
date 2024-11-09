import 'package:book_app/core/theming/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool focus = false;
  bool textEmpty = true;
  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkBlue,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                textEmpty
                    ? IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ))
                    : IconButton(
                        onPressed: () {
                          focus = false;
                          textEmpty=true;
                          searchController.clear();

                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.white,
                        )),
                Container(
                  width: 300.w,
                  child: TextField(
                    controller: searchController,
                    cursorRadius: const Radius.circular(10),
                    canRequestFocus: true,
                    cursorColor: Colors.white,
                    onChanged:(value) {
                      setState(() {
                        value.isEmpty?textEmpty=true:textEmpty=false;


                       setState(() {

                       });
                      });
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: focus == true
                              ? const Icon(
                                  Icons.search_sharp,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.search_sharp,
                                  color: ColorsApp.witheGray,
                                )),
                      hintText: "search",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: ColorsApp.witheGray),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
