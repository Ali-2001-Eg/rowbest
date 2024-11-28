import 'package:flutter/material.dart';
import 'package:rowbest/core/extensions/context_extension.dart';
import 'package:rowbest/core/stateful/custom_slider_widget.dart';
import 'package:rowbest/core/stateful/home_slider_widget.dart';
import 'package:rowbest/core/stateless/custom_ad_card.dart';
import 'package:rowbest/core/stateless/home_search_text_field.dart';
import 'package:rowbest/core/stateless/home_toggle.dart';
import 'package:rowbest/core/stateless/image_from_network.dart';
import 'package:rowbest/features/home/home_grid.dart';
import 'package:rowbest/features/home/start_grid.dart';
import 'package:rowbest/features/home/video_list.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.05),
            _buildHeader(context),
            SizedBox(height: context.screenHeight * 0.02),
            const CustomSearchBar(),
            SizedBox(height: context.screenHeight * 0.001),
            CustomAdCard(),
            SizedBox(height: context.screenHeight * 0.001),
            ProductCategories(),
            SizedBox(height: context.screenHeight * 0.0),
            MediaQuery.removePadding(context:context, removeTop: true, child: _buildBanner(context)),
            SizedBox(height: context.screenHeight * 0.001),
            const CustomToggle(),
            SizedBox(height: context.screenHeight * 0.001),
            OffersGrid(isFav: false,),
            SizedBox(height: context.screenHeight * 0.001),
            VideoList(),
            SizedBox(height: context.screenHeight * 0.001),
            const StarGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      // height: 200,
      width: context.screenWidth,
      child: CarouselSliderWidget(
          height: 150,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          widgets: List.generate(5, (index) {
            return Container(
              // height: 150.h,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              // padding: EdgeInsets.symmetric(horizontal: 80.w),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/banner.png'),
                    fit: BoxFit.fill,
                  )),
            );
          })),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "حدائق الاهرام",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.normal, color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text("مرحبا بك يا محمد",
                    style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(width: 15),
              ],
            ),
          ],
        ),

        Expanded(child: Container()),

        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/avatar.png'),
          // child: Icon(Icons.person),
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset('assets/svg/notification.svg'),
        // const Spacer(),
      ],
    );
  }
}
