import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:invidious/globals.dart';
import 'package:invidious/router.dart';
import 'package:invidious/search/views/components/search_filters.dart';

import '../../../settings/states/settings.dart';
import '../../../utils.dart';
import '../../states/search.dart';

//Do not change, invidious doesn't allow any specific value, it's to make the paginated lists work as expected
const searchPageSize = 20;

@RoutePage()
class SearchScreen extends StatelessWidget {
  final String? query;
  final bool? searchNow;

  const SearchScreen({super.key, this.query, this.searchNow});

  @override
  Widget build(BuildContext context) {
    var locals = AppLocalizations.of(context)!;
    var settings = context.read<SettingsCubit>();
    return OrientationBuilder(
      builder: (context, orientation) {
        final deviceType = getDeviceType();
        final deviceOrientation = getOrientation();
        return BlocProvider(
          create: (context) => SearchCubit<SearchState>(
              SearchState.init(query: query, searchNow: searchNow), settings),
          child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, _) {
              var cubit = context.read<SearchCubit>();
              return AutoTabsRouter.tabBar(
                  routes: const [
                    SearchVideoRoute(),
                    SearchChannelRoute(),
                    SearchPlaylistRoute()
                  ],
                  builder: (context, child, controller) {
                    final tabsController = AutoTabsRouter.of(context);
                    return Scaffold(
                      bottomNavigationBar:
                          _.showResults && deviceType == DeviceType.phone
                              ? NavigationBar(
                                  selectedIndex: tabsController.activeIndex,
                                  onDestinationSelected:
                                      tabsController.setActiveIndex,
                                  destinations: [
                                    NavigationDestination(
                                        icon: const Icon(Icons.play_arrow),
                                        label: locals.videos),
                                    NavigationDestination(
                                        icon: const Icon(Icons.people),
                                        label: locals.channels),
                                    NavigationDestination(
                                        icon: const Icon(Icons.playlist_play),
                                        label: locals.playlists),
                                  ],
                                )
                              : null,
                      appBar: AppBar(
                        title: TextField(
                          autofocus: query == null,
                          controller: _.queryController,
                          textInputAction: TextInputAction.search,
                          onSubmitted: cubit.search,
                        ),
                        actions: [
                          IconButton(
                              onPressed: () {
                                if (cubit.searchCleared()) {
                                  AutoRouter.of(context).pop();
                                }
                              },
                              icon: const Icon(Icons.clear)),
                          SearchFiltersButton(
                            initialFilters: _.filters,
                            onChanged: (newFilters) {
                              cubit.onFiltersChanged(newFilters);
                              if (_.showResults ||
                                  _.queryController.text.isNotEmpty) {
                                cubit.search(_.queryController.text);
                              }
                            },
                          ),
                        ],
                      ),
                      body: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: innerHorizontalPadding),
                          child: !_.showResults
                              ? ListView(
                                  children: _.queryController.value.text.isEmpty
                                      ? cubit
                                          .getHistory()
                                          .map((e) => InkWell(
                                                onTap: () =>
                                                    cubit.setSearchQuery(e),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(children: [
                                                    const Icon(Icons.history),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 8),
                                                        child: Text(e))
                                                  ]),
                                                ),
                                              ))
                                          .toList()
                                      : _.suggestions
                                          .map((e) => InkWell(
                                                onTap: () =>
                                                    cubit.setSearchQuery(e),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(e),
                                                ),
                                              ))
                                          .toList(),
                                )
                              : Row(
                                  children: [
                                    if (deviceType == DeviceType.tablet)
                                      NavigationRail(
                                        extended: deviceOrientation ==
                                            Orientation.landscape,
                                        destinations: [
                                          NavigationRailDestination(
                                              icon:
                                                  const Icon(Icons.play_arrow),
                                              label: Text(locals.videos)),
                                          NavigationRailDestination(
                                              icon: const Icon(Icons.people),
                                              label: Text(locals.channels)),
                                          NavigationRailDestination(
                                              icon: const Icon(
                                                  Icons.playlist_play),
                                              label: Text(locals.playlists)),
                                        ],
                                        selectedIndex:
                                            tabsController.activeIndex,
                                        onDestinationSelected:
                                            tabsController.setActiveIndex,
                                      ),
                                    Expanded(
                                      child: child,
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    );
                  });
            },
          ),
        );
      },
    );
  }
}
