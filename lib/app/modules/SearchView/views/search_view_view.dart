import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jago_kisan/api/response/model/vegetable_model.dart';
import 'package:jago_kisan/api/services/static_list.dart';
import 'package:jago_kisan/app/modules/SearchView/controllers/search_view_controller.dart';
import 'package:jago_kisan/common/app_const/app_assets.dart';
import 'package:jago_kisan/common/widget/back_ground_card/back_ground_card.dart';
import 'package:jago_kisan/common/widget/text_form_field/custom_search_bar.dart';
import 'package:jago_kisan/common/widget/text_widget/regulat_text_widget.dart';

import '../../../../common/app_const/app_dimes.dart';

class SearchViewView extends StatelessWidget {
  const SearchViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchViewController>(builder: (controller) {
      return BackGroundCard(
        child: ListView(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1,
            bottom: AppDimes.regularPadding,
            left: AppDimes.regularPadding,
            right: AppDimes.regularPadding,
          ),
          children: [
            Image.asset(
              AppAssets.logo,
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.height * 0.15,
            ),
            const SizedBox(height: AppDimes.regularPadding),
            const RegularTextWidget(
              text: "Search",
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
            CustomSearchBar(
              controller: controller.searchController,
              // hideFilterButton: true,
              suffixIcon: Icons.cancel,
              suffixFunction: controller.onSearchClear,
            ),
            const SizedBox(height: AppDimes.regularPadding),
            const RegularTextWidget(
              text: "Vegetables crops expert",
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 14,
            ),
            ListView.builder(
                itemCount: expertList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  VegetableModel item = expertList[index];
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const RegularTextWidget(
                                text: "Expert In:",
                                fontSize: 16,
                              ),
                              RegularTextWidget(
                                  text: "> ${item.expertIn!}",
                                  color: Colors.black,
                                  fontSize: 14),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          minRadius: 60,
                          backgroundImage: NetworkImage(item.image!),
                          // child: Image.network(
                          //   item.image!,
                          //   height: 100,
                          //   width: 100,
                          // ),
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      );
    });
  }
}
