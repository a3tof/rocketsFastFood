import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/Core/utils/app_router.dart';

class SliderListView extends StatelessWidget {
  const SliderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kOfferView);
              },
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // We set color or other properties if needed
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/454376344_547935074234641_651537050709322859_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeF6fR6R8YavYh33WhzScaFcKiKG3jzSWI0qIobePNJYjW_xlvdYq735lRpaJhH22c9phPrcay3rFpLwBHeZR8V5&_nc_ohc=UT7oud5YnmgQ7kNvgE6vGe2&_nc_ht=scontent.fcai20-2.fna&oh=00_AYCeXDhOHXJstWt5w7wBTahAv1GGpB42Oducl2_atAJ4SA&oe=66C81585',
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(
                          color: kPrimaryColor,
                        )),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              items[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> items = [
  'العرض الاول',
  'العرض الثاني',
  'العرض الثالث',
];
