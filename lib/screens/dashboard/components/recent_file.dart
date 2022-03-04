
import 'package:admin/constants.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recent Naku", style: Theme.of(context).textTheme.subtitle1),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(label: Text("Naku Name")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Size")),
                ],
                rows: List.generate(demoRecentFiles.length,
                    (index) => RecentFileDataRow(demoRecentFiles[index])),
              ),
            ),
          ],
        ));
  }
}

DataRow RecentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(fileInfo.title),
          ),
        ],
      )),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size)),
    ],
  );
}