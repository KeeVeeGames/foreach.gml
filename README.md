# foreach.gml

It is a `foreach()` loop implementation for GameMaker: Studio 2.3+ for arrays, ds_lists, ds_maps, ds_stacks, ds_queues, ds_priorities and structs.   
**Note:** queue-type data structures such as stacks, queues and priorities will be empty after full foreach pass.

General syntax is:

```js
foreach(collection as (item) {
    do_things(item);
});
```

You also can receive additional parameters such as iteration index, key for map, priority for priority queue and property name for struct, specifying it inside `as` keyword brackets after item var.

## Examples

### Foreach in array:
```js
var apples = ["red", "green", "yellow", "mac", "forbidden"];

foreach(apples as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});
```

Output:
```
0: red
1: green
2: yellow
3: mac
4: forbidden
```

### Foreach in struct:
```js
var apples = { red : "delicius", green : "eww", yellow : "yum" };

foreach_struct(apples as (taste, color) {
    show_debug_message(color + " is " + taste);
});
```

Output:
```
yellow is yum
red is delicius
green is eww
```

### Foreach in list:
```js
var apples = ds_list_create();
ds_list_add(apples, "red", "green", "yellow", "mac", "forbidden");

foreach_list(apples as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});
```

Output:
```
0: red
1: green
2: yellow
3: mac
4: forbidden
```

### Foreach in map:
```js
var apples = ds_map_create();
ds_map_add(apples, "red", "delicius");
ds_map_add(apples, "green", "eww");
ds_map_add(apples, "yellow", "yum");

foreach_map(apples as (taste, color) {
    show_debug_message(color + " is " + taste);
});
```

Output:
```
yellow is yum
red is delicius
green is eww
```

### Foreach in stack:
```js
var apples = ds_stack_create();
ds_stack_push(apples, "red", "green", "yellow", "mac", "forbidden");

foreach_stack(apples as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});
```

Output:
```
0: forbidden
1: mac
2: yellow
3: green
4: red
```

### Foreach in queue:
```js
var apples = ds_queue_create();
ds_queue_enqueue(apples, "red", "green", "yellow", "mac", "forbidden");

foreach_queue(apples as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});
```

Output:
```
0: red
1: green
2: yellow
3: mac
4: forbidden
```

### Foreach in priority:
```js
var apples = ds_priority_create();
ds_priority_add(apples, "red", 10);
ds_priority_add(apples, "green", 30);
ds_priority_add(apples, "yellow", 20);

foreach_priority(apples as (apple, priority) {
    show_debug_message(string(priority) + ": " + apple);
});
```

Output:
```
30: green
20: yellow
10: red
```

## Author:
Nikita Musatov - [MusNik / KeeVee Games](https://twitter.com/keeveegames)

License: [MIT](https://en.wikipedia.org/wiki/MIT_License)
