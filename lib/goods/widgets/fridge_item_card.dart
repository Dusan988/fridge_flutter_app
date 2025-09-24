import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fridge_tracker/goods/dtos/fridge_item_dto.dart';

import 'package:intl/intl.dart';

class FridgeItemCard extends StatelessWidget {
  final FridgeItemDTO item;

  const FridgeItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    final now = DateTime.now();

    final daysLeft = item.bestBeforeDate.difference(now).inDays;

    Color borderColor;
    if (daysLeft <= 1) {
      borderColor = Colors.redAccent;
    }

    else if(item.bestBeforeDate.isBefore(DateTime.now())){

      borderColor = Colors.grey;
    }
    else if (daysLeft <= 2) {
      borderColor = Colors.orangeAccent;
    } else {
      borderColor = Colors.green;
    }
    Widget imageWidget;

    if (item.imageUrl.isEmpty) {
      imageWidget = const Icon(Icons.image_not_supported, size: 60);
    } else if (item.imageUrl.startsWith('http')) {
      imageWidget = CachedNetworkImage(
        imageUrl: item.imageUrl,
        height: 80,
        width: 80,
        fit: BoxFit.cover,
        errorWidget: (_, __, ___) =>
            const Icon(Icons.broken_image, size: 60, color: Colors.red),
      );
    } else {
      imageWidget = Image.file(
        File(item.imageUrl),
        height: 80,
        width: 80,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) =>
            const Icon(Icons.broken_image, size: 60, color: Colors.red),
      );
    }
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(color: borderColor, width: 2.w),
      ),
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: imageWidget,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Category: ${item.category}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Quantity: ${item.quantity}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Best Before: ${dateFormat.format(item.bestBeforeDate)}",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: borderColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            if (item.bestBeforeDate.isBefore(DateTime.now()))
              Image.asset('assets/expired.png', height: 45.h, width: 45.w,),
          ],
        ),
      ),
    );
  }
}
