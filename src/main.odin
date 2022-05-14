package main

import "core:fmt"
import "core:testing"
import "shared:arrays"

main :: proc() {

	data := []u32{1, 2, 3, 45}
	data2 := []u32{}

	fmt.println(arrays.array_is_empty([]u32, data))
	fmt.println(arrays.array_is_empty([]u32, data2))


	data3 := [dynamic]u32{1, 2, 3, 4}
	data4 := [dynamic]u32{5, 6, 7, 8, 9, 10}

	fmt.println(arrays.array_merge([dynamic]u32, data3, data4))


	fmt.println(
		arrays.array_filter([dynamic]u32, [dynamic]u32{2, 4, 5}, proc(x: u32) -> bool {
				return x % 2 == 0
			}),
	)

	fmt.println(arrays.array_map([]u32, []u32{2, 4, 5}, proc(x: u32) -> u32 {
				return x * 2
			}))

	fmt.println(arrays.array_sum([]u32, []u32{1, 2, 3, 4, 5}))

	arrays.array_foreach([]u32, []u32{1, 2, 3, 4, 5}, proc(x: u32) {
			fmt.println(x)
		})

}
