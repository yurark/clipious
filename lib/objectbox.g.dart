// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/db/appLog.dart';
import 'models/db/downloadedVideo.dart';
import 'models/db/progress.dart';
import 'models/db/searchHistoryItem.dart';
import 'models/db/server.dart';
import 'models/db/settings.dart';
import 'models/db/videoFilter.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8038281984607819042),
      name: 'Server',
      lastPropertyId: const IdUid(7, 7993511472188126727),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2410037502505490239),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8956955780928852647),
            name: 'url',
            type: 9,
            flags: 34848,
            indexId: const IdUid(1, 2407620149040502806)),
        ModelProperty(
            id: const IdUid(3, 2983333445278944481),
            name: 'authToken',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2632576147281157993),
            name: 'inUse',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7993511472188126727),
            name: 'sidCookie',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 2463187106197509769),
      name: 'SettingsValue',
      lastPropertyId: const IdUid(3, 4665740245375834282),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3567602159840796895),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 525293931186831855),
            name: 'name',
            type: 9,
            flags: 34848,
            indexId: const IdUid(2, 1004000799244198133)),
        ModelProperty(
            id: const IdUid(3, 4665740245375834282),
            name: 'value',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 8787382286414233697),
      name: 'Progress',
      lastPropertyId: const IdUid(3, 8602536477328513343),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5651818511313053101),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4301486387527660152),
            name: 'progress',
            type: 8,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8602536477328513343),
            name: 'videoId',
            type: 9,
            flags: 34848,
            indexId: const IdUid(3, 4343529106190079511))
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 6956330633348216454),
      name: 'SearchHistoryItem',
      lastPropertyId: const IdUid(3, 4799661758354837094),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5055652677379509965),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1184322842379216559),
            name: 'search',
            type: 9,
            flags: 34848,
            indexId: const IdUid(5, 7262786699272501249)),
        ModelProperty(
            id: const IdUid(3, 4799661758354837094),
            name: 'time',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 8446250266008376981),
      name: 'AppLog',
      lastPropertyId: const IdUid(6, 5023716219165786985),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3160197863614923332),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3008237629246315185),
            name: 'level',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2647517759142178088),
            name: 'time',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7759611646931835814),
            name: 'message',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1230803493579490035),
            name: 'stacktrace',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5023716219165786985),
            name: 'logger',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 8304874620604193998),
      name: 'VideoFilter',
      lastPropertyId: const IdUid(8, 6020474727686624632),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4718003498405944371),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 906689741192359458),
            name: 'channelId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 19321448094437321),
            name: 'value',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7050038042672519102),
            name: 'dbType',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 2812361632619055204),
            name: 'dbOperation',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4560530621575797576),
            name: 'filterAll',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6020474727686624632),
            name: 'hideFromFeed',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(7, 7737259498144569754),
      name: 'DownloadedVideo',
      lastPropertyId: const IdUid(7, 4130320220878296738),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4941717954477256691),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6600296338817128660),
            name: 'videoId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2383320059961158921),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8378509179540529921),
            name: 'author',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1179720564271059922),
            name: 'authorUrl',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 107924486215845740),
            name: 'downloadComplete',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4130320220878296738),
            name: 'downloadFailed',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(7, 7737259498144569754),
      lastIndexId: const IdUid(5, 7262786699272501249),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [9110274326691932798],
      retiredPropertyUids: const [
        3422621380867834787,
        971220157301355316,
        7030952573865954657
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Server: EntityDefinition<Server>(
        model: _entities[0],
        toOneRelations: (Server object) => [],
        toManyRelations: (Server object) => {},
        getId: (Server object) => object.id,
        setId: (Server object, int id) {
          object.id = id;
        },
        objectToFB: (Server object, fb.Builder fbb) {
          final urlOffset = fbb.writeString(object.url);
          final authTokenOffset = object.authToken == null
              ? null
              : fbb.writeString(object.authToken!);
          final sidCookieOffset = object.sidCookie == null
              ? null
              : fbb.writeString(object.sidCookie!);
          fbb.startTable(8);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, urlOffset);
          fbb.addOffset(2, authTokenOffset);
          fbb.addBool(5, object.inUse);
          fbb.addOffset(6, sidCookieOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Server(const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, ''))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0)
            ..authToken = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 8)
            ..inUse =
                const fb.BoolReader().vTableGet(buffer, rootOffset, 14, false)
            ..sidCookie = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 16);

          return object;
        }),
    SettingsValue: EntityDefinition<SettingsValue>(
        model: _entities[1],
        toOneRelations: (SettingsValue object) => [],
        toManyRelations: (SettingsValue object) => {},
        getId: (SettingsValue object) => object.id,
        setId: (SettingsValue object, int id) {
          object.id = id;
        },
        objectToFB: (SettingsValue object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final valueOffset = fbb.writeString(object.value);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, valueOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = SettingsValue(
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    Progress: EntityDefinition<Progress>(
        model: _entities[2],
        toOneRelations: (Progress object) => [],
        toManyRelations: (Progress object) => {},
        getId: (Progress object) => object.id,
        setId: (Progress object, int id) {
          object.id = id;
        },
        objectToFB: (Progress object, fb.Builder fbb) {
          final videoIdOffset = fbb.writeString(object.videoId);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addFloat64(1, object.progress);
          fbb.addOffset(2, videoIdOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Progress(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.Float64Reader().vTableGet(buffer, rootOffset, 6, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''));

          return object;
        }),
    SearchHistoryItem: EntityDefinition<SearchHistoryItem>(
        model: _entities[3],
        toOneRelations: (SearchHistoryItem object) => [],
        toManyRelations: (SearchHistoryItem object) => {},
        getId: (SearchHistoryItem object) => object.id,
        setId: (SearchHistoryItem object, int id) {
          object.id = id;
        },
        objectToFB: (SearchHistoryItem object, fb.Builder fbb) {
          final searchOffset = fbb.writeString(object.search);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, searchOffset);
          fbb.addInt64(2, object.time);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = SearchHistoryItem(
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    AppLog: EntityDefinition<AppLog>(
        model: _entities[4],
        toOneRelations: (AppLog object) => [],
        toManyRelations: (AppLog object) => {},
        getId: (AppLog object) => object.id,
        setId: (AppLog object, int id) {
          object.id = id;
        },
        objectToFB: (AppLog object, fb.Builder fbb) {
          final levelOffset = fbb.writeString(object.level);
          final messageOffset =
              object.message == null ? null : fbb.writeString(object.message!);
          final stacktraceOffset = object.stacktrace == null
              ? null
              : fbb.writeString(object.stacktrace!);
          final loggerOffset = fbb.writeString(object.logger);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, levelOffset);
          fbb.addInt64(2, object.time.millisecondsSinceEpoch);
          fbb.addOffset(3, messageOffset);
          fbb.addOffset(4, stacktraceOffset);
          fbb.addOffset(5, loggerOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = AppLog(
              level: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              logger: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 14, ''),
              time: DateTime.fromMillisecondsSinceEpoch(
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0)),
              message: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              stacktrace: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    VideoFilter: EntityDefinition<VideoFilter>(
        model: _entities[5],
        toOneRelations: (VideoFilter object) => [],
        toManyRelations: (VideoFilter object) => {},
        getId: (VideoFilter object) => object.id,
        setId: (VideoFilter object, int id) {
          object.id = id;
        },
        objectToFB: (VideoFilter object, fb.Builder fbb) {
          final channelIdOffset = object.channelId == null
              ? null
              : fbb.writeString(object.channelId!);
          final valueOffset =
              object.value == null ? null : fbb.writeString(object.value!);
          final dbTypeOffset =
              object.dbType == null ? null : fbb.writeString(object.dbType!);
          final dbOperationOffset = object.dbOperation == null
              ? null
              : fbb.writeString(object.dbOperation!);
          fbb.startTable(9);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, channelIdOffset);
          fbb.addOffset(2, valueOffset);
          fbb.addOffset(3, dbTypeOffset);
          fbb.addOffset(4, dbOperationOffset);
          fbb.addBool(6, object.filterAll);
          fbb.addBool(7, object.hideFromFeed);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = VideoFilter(
              value: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              channelId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0)
            ..dbType = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 10)
            ..dbOperation = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 12)
            ..filterAll =
                const fb.BoolReader().vTableGet(buffer, rootOffset, 16, false)
            ..hideFromFeed =
                const fb.BoolReader().vTableGet(buffer, rootOffset, 18, false);

          return object;
        }),
    DownloadedVideo: EntityDefinition<DownloadedVideo>(
        model: _entities[6],
        toOneRelations: (DownloadedVideo object) => [],
        toManyRelations: (DownloadedVideo object) => {},
        getId: (DownloadedVideo object) => object.id,
        setId: (DownloadedVideo object, int id) {
          object.id = id;
        },
        objectToFB: (DownloadedVideo object, fb.Builder fbb) {
          final videoIdOffset = fbb.writeString(object.videoId);
          final titleOffset = fbb.writeString(object.title);
          final authorOffset =
              object.author == null ? null : fbb.writeString(object.author!);
          final authorUrlOffset = object.authorUrl == null
              ? null
              : fbb.writeString(object.authorUrl!);
          fbb.startTable(8);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, videoIdOffset);
          fbb.addOffset(2, titleOffset);
          fbb.addOffset(3, authorOffset);
          fbb.addOffset(4, authorUrlOffset);
          fbb.addBool(5, object.downloadComplete);
          fbb.addBool(6, object.downloadFailed);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = DownloadedVideo(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              videoId: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              title: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              author: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              authorUrl: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              downloadComplete: const fb.BoolReader()
                  .vTableGet(buffer, rootOffset, 14, false),
              downloadFailed: const fb.BoolReader()
                  .vTableGet(buffer, rootOffset, 16, false));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Server] entity fields to define ObjectBox queries.
class Server_ {
  /// see [Server.id]
  static final id = QueryIntegerProperty<Server>(_entities[0].properties[0]);

  /// see [Server.url]
  static final url = QueryStringProperty<Server>(_entities[0].properties[1]);

  /// see [Server.authToken]
  static final authToken =
      QueryStringProperty<Server>(_entities[0].properties[2]);

  /// see [Server.inUse]
  static final inUse = QueryBooleanProperty<Server>(_entities[0].properties[3]);

  /// see [Server.sidCookie]
  static final sidCookie =
      QueryStringProperty<Server>(_entities[0].properties[4]);
}

/// [SettingsValue] entity fields to define ObjectBox queries.
class SettingsValue_ {
  /// see [SettingsValue.id]
  static final id =
      QueryIntegerProperty<SettingsValue>(_entities[1].properties[0]);

  /// see [SettingsValue.name]
  static final name =
      QueryStringProperty<SettingsValue>(_entities[1].properties[1]);

  /// see [SettingsValue.value]
  static final value =
      QueryStringProperty<SettingsValue>(_entities[1].properties[2]);
}

/// [Progress] entity fields to define ObjectBox queries.
class Progress_ {
  /// see [Progress.id]
  static final id = QueryIntegerProperty<Progress>(_entities[2].properties[0]);

  /// see [Progress.progress]
  static final progress =
      QueryDoubleProperty<Progress>(_entities[2].properties[1]);

  /// see [Progress.videoId]
  static final videoId =
      QueryStringProperty<Progress>(_entities[2].properties[2]);
}

/// [SearchHistoryItem] entity fields to define ObjectBox queries.
class SearchHistoryItem_ {
  /// see [SearchHistoryItem.id]
  static final id =
      QueryIntegerProperty<SearchHistoryItem>(_entities[3].properties[0]);

  /// see [SearchHistoryItem.search]
  static final search =
      QueryStringProperty<SearchHistoryItem>(_entities[3].properties[1]);

  /// see [SearchHistoryItem.time]
  static final time =
      QueryIntegerProperty<SearchHistoryItem>(_entities[3].properties[2]);
}

/// [AppLog] entity fields to define ObjectBox queries.
class AppLog_ {
  /// see [AppLog.id]
  static final id = QueryIntegerProperty<AppLog>(_entities[4].properties[0]);

  /// see [AppLog.level]
  static final level = QueryStringProperty<AppLog>(_entities[4].properties[1]);

  /// see [AppLog.time]
  static final time = QueryIntegerProperty<AppLog>(_entities[4].properties[2]);

  /// see [AppLog.message]
  static final message =
      QueryStringProperty<AppLog>(_entities[4].properties[3]);

  /// see [AppLog.stacktrace]
  static final stacktrace =
      QueryStringProperty<AppLog>(_entities[4].properties[4]);

  /// see [AppLog.logger]
  static final logger = QueryStringProperty<AppLog>(_entities[4].properties[5]);
}

/// [VideoFilter] entity fields to define ObjectBox queries.
class VideoFilter_ {
  /// see [VideoFilter.id]
  static final id =
      QueryIntegerProperty<VideoFilter>(_entities[5].properties[0]);

  /// see [VideoFilter.channelId]
  static final channelId =
      QueryStringProperty<VideoFilter>(_entities[5].properties[1]);

  /// see [VideoFilter.value]
  static final value =
      QueryStringProperty<VideoFilter>(_entities[5].properties[2]);

  /// see [VideoFilter.dbType]
  static final dbType =
      QueryStringProperty<VideoFilter>(_entities[5].properties[3]);

  /// see [VideoFilter.dbOperation]
  static final dbOperation =
      QueryStringProperty<VideoFilter>(_entities[5].properties[4]);

  /// see [VideoFilter.filterAll]
  static final filterAll =
      QueryBooleanProperty<VideoFilter>(_entities[5].properties[5]);

  /// see [VideoFilter.hideFromFeed]
  static final hideFromFeed =
      QueryBooleanProperty<VideoFilter>(_entities[5].properties[6]);
}

/// [DownloadedVideo] entity fields to define ObjectBox queries.
class DownloadedVideo_ {
  /// see [DownloadedVideo.id]
  static final id =
      QueryIntegerProperty<DownloadedVideo>(_entities[6].properties[0]);

  /// see [DownloadedVideo.videoId]
  static final videoId =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[1]);

  /// see [DownloadedVideo.title]
  static final title =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[2]);

  /// see [DownloadedVideo.author]
  static final author =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[3]);

  /// see [DownloadedVideo.authorUrl]
  static final authorUrl =
      QueryStringProperty<DownloadedVideo>(_entities[6].properties[4]);

  /// see [DownloadedVideo.downloadComplete]
  static final downloadComplete =
      QueryBooleanProperty<DownloadedVideo>(_entities[6].properties[5]);

  /// see [DownloadedVideo.downloadFailed]
  static final downloadFailed =
      QueryBooleanProperty<DownloadedVideo>(_entities[6].properties[6]);
}
