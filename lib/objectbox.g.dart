// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/db/progress.dart';
import 'models/db/server.dart';
import 'models/db/settings.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8038281984607819042),
      name: 'Server',
      lastPropertyId: const IdUid(5, 971220157301355316),
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
            id: const IdUid(5, 971220157301355316),
            name: 'ping',
            type: 6,
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
      lastEntityId: const IdUid(3, 8787382286414233697),
      lastIndexId: const IdUid(3, 4343529106190079511),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [3422621380867834787],
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
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, urlOffset);
          fbb.addOffset(2, authTokenOffset);
          fbb.addInt64(4, object.ping);
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
            ..ping = const fb.Int64Reader()
                .vTableGetNullable(buffer, rootOffset, 12);

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

  /// see [Server.ping]
  static final ping = QueryIntegerProperty<Server>(_entities[0].properties[3]);
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
