import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/med%20records%20screen/widgets/view_prescription.dart';

class MedRecordGrid extends StatelessWidget {
  const MedRecordGrid({
    super.key,
    required this.imageUrlList,
  });
  final List<String> imageUrlList;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15.dg,
        crossAxisSpacing: 15.dg,
      ),
      itemBuilder: (context, index) {
        final imgUrl = imageUrlList[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ViewPrescriptionScreen(imageUrl: imgUrl),
            ));
          },
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: kBlackColor,
                width: 0.5.dg,
              ),
              boxShadow: [
                BoxShadow(
                  color: kExtraLightColor,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imgUrl,
                ),
              ),
            ),
          ),
        );
      },
      itemCount: imageUrlList.length,
    );
  }
}
