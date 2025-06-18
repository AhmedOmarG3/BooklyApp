import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerItemShimmer extends StatelessWidget {
  const BestSellerItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated( itemCount: 5,
      separatorBuilder: (context, index) =>SizedBox(height: 5,), 
     itemBuilder: (context, index) =>
       Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Row(
          children: [
            
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(width: 30),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.45,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  
                  Container(
                    height: 14,
                    width: 100,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 16),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 18,
                        width: 40,
                        color: Colors.white,
                      ),
                      Container(
                        height: 18,
                        width: 60,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
