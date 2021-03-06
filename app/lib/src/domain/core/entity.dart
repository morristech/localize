/*
 * Copyright 2020 Pedro Massango. All rights reserved.
 * Created by Pedro Massango on 5/7/2020.
 */

import 'value_objects/unique_id.dart';

abstract class Entity {
  UniqueId get id;

  const Entity();
}
