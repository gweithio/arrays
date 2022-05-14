# odin array

This is a basic package that will exponetionally grow to include new procedures to operate on arrays

This is also apart of my [Writing an Array package for Odin](https://www.epmor.app/posts/writing-a-odin-array-package) articles.


# Usage

```go

package main

import "shared:arrays"

main :: proc() {

    // filtering an array
	arrays.array_filter([dynamic]u32, [dynamic]u32{2, 4, 5}, proc(x: u32) -> bool {
				return x % 2 == 0
	})

    // running and applying expressions to elements
	arrays.array_map([]u32, []u32{2, 4, 5}, proc(x: u32) -> u32 {
				return x * 2
	})

    // summing values in the array
	arrays.array_sum([]u32, []u32{1, 2, 3, 4, 5})

    // looping over the array
	arrays.array_foreach([]u32, []u32{1, 2, 3, 4, 5}, proc(x: u32) {
			fmt.println(x)
	})
}
```
