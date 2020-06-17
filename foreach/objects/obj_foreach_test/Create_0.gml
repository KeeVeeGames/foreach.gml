// array

var apples = ["red", "green", "yellow", "mac", "forbidden"];

foreach(apples as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});


// list

var apples_list = ds_list_create();
ds_list_add(apples_list, "red", "green", "yellow", "mac", "forbidden");

foreach_list(apples_list as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});

// map

var apples_map = ds_map_create();
ds_map_add(apples_map, "red", "delicious");
ds_map_add(apples_map, "green", "eww");
ds_map_add(apples_map, "yellow", "yum");

foreach_map(apples_map as (taste, color) {
    show_debug_message(color + " is " + taste);
});

// stack

var apples_stack = ds_stack_create();
ds_stack_push(apples_stack, "red", "green", "yellow", "mac", "forbidden");

foreach_stack(apples_stack as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});


// queue

var apples_queue = ds_queue_create();
ds_queue_enqueue(apples_stack, "red", "green", "yellow", "mac", "forbidden");

foreach_queue(apples_queue as (apple, i) {
    show_debug_message(string(i) + ": " + apple);
});


// priority

var apples_priority = ds_priority_create();
ds_priority_add(apples_priority, "red", 10);
ds_priority_add(apples_priority, "green", 30);
ds_priority_add(apples_priority, "yellow", 20);

foreach_priority(apples_priority as (apple, priority) {
    show_debug_message(string(priority) + ": " + apple);
});


// struct

var apples_struct = { red : "delicious", green : "eww", yellow : "yum" };

foreach_struct(apples_struct as (taste, color) {
    show_debug_message(color + " is " + taste);
});