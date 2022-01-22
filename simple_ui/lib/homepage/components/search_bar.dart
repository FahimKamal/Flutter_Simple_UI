import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 30,
                      child: Image.asset("assets/icons/006-loupe.png", color: Colors.grey[600],),
                    ),
                  ),
                  const Expanded(
                    child:  TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for a job..."
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10,),
          InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12)
              ),
              child: Image.asset("assets/icons/005-settings.png", color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}