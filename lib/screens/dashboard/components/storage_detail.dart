import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/chart.dart';
import 'package:admin/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius:
                const BorderRadius.all(Radius.circular(10))),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Naku Details",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: defaultPadding,
              ),
              Chart(),
              StorageInfoCard(
                svgSrc: "assets/icons/Documents.svg",
                title: "Documents Naku",
                amountOFFiles: "1.3GB",
                numOffiles: 1328,
              ),
              StorageInfoCard(
                svgSrc: "assets/icons/media.svg",
                title: "Media Naku",
                amountOFFiles: "15.3GB",
                numOffiles: 1328,
              ),
              StorageInfoCard(
                svgSrc: "assets/icons/folder.svg",
                title: "Documents Naku",
                amountOFFiles: "1.3GB",
                numOffiles: 1328,
              ),
              StorageInfoCard(
                svgSrc: "assets/icons/unknown.svg",
                title: "Unknown Naku",
                amountOFFiles: "1.3GB",
                numOffiles: 140,
              ),
            ]));
  }
}
