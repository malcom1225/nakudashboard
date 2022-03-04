import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.amountOFFiles,
    required this.numOffiles,
  }) : super(key: key);

  final String title, svgSrc, amountOFFiles;
  final int numOffiles;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: defaultPadding),
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: primaryColor.withOpacity(0.15),
            ),
            borderRadius:
                const BorderRadius.all(Radius.circular(defaultPadding))),
        child: Row(
          children: [
            SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                  svgSrc,
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
                    Text("$numOffiles Naku",
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.white70))
                  ],
                ),
              ),
            ),
            Text(amountOFFiles)
          ],
        ));
  }
}
