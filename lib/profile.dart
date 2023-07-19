import 'package:blogclub_app/data.dart';
import 'package:blogclub_app/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final posts = AppDatabase.posts;
    return Scaffold(

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             AppBar(
              backgroundColor: themeData.colorScheme.background.withOpacity(0),
              elevation: 0,
              title: Text('Profile'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz_rounded),
                ),
                const SizedBox(height: 16),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(32, 0, 32, 64),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: themeData.colorScheme.surface,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color:
                          themeData.colorScheme.onBackground.withOpacity(0.1),
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Assets.img.stories.story8.image(
                                width: 84,
                                height: 84,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('@joviedan',
                                      style: themeData.textTheme.bodyMedium),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Jovi Daniel',
                                    style:
                                    themeData.textTheme.labelLarge!.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'UX Designer',
                                    style: themeData.textTheme.labelLarge!
                                        .apply(
                                        color: themeData.colorScheme.primary),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: Text('About me',
                            style: themeData.textTheme.labelSmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 4, 32, 32),
                        child: Text(
                            'Madison Blackstone is a director of user experience design, with experience managing global teams.',
                            style: themeData.textTheme.bodyMedium),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                Positioned(
                    right: 96,
                    left: 96,
                    bottom: 32,
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          color:
                          themeData.colorScheme.onBackground.withOpacity(0.8),
                        ),
                      ]),
                    )),
                Positioned(
                  bottom: 32,
                  left: 64,
                  right: 64,
                  child: Container(
                    height: 68,
                    decoration: BoxDecoration(
                      color: themeData.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff2451CD),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('52',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: themeData.colorScheme.onPrimary,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(height: 4),
                                Text(
                                  'Post',
                                  style: themeData.textTheme.titleMedium!
                                      .copyWith(
                                      fontWeight: FontWeight.w200,
                                      color: themeData.colorScheme.onPrimary),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('250',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: themeData.colorScheme.onPrimary,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(height: 4),
                              Text(
                                'Following',
                                style: themeData.textTheme.titleMedium!
                                    .copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: themeData.colorScheme.onPrimary),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('4.5K',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: themeData.colorScheme.onPrimary,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(height: 4),
                              Text(
                                'Followers',
                                style: themeData.textTheme.titleMedium!
                                    .copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: themeData.colorScheme.onPrimary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: themeData.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'My Posts',
                            style: themeData.textTheme.titleLarge,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Assets.img.icons.grid.svg(),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Assets.img.icons.table.svg(),
                        ),
                      ],
                    ),
                  ),
                  for (var i = 0; i < posts.length; i++) Post(post: posts[i]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
