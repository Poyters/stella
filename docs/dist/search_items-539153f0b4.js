searchNodes=[{"doc":"Documentation for Ackermann.","ref":"Ackermann.html","title":"Ackermann","type":"module"},{"doc":"Run Ackermann function for given initials More info on Wikipedia pageExamplesiex&gt; Ackermann.ack(0, 1) 2 iex&gt; Ackermann.ack(3, 6) 509","ref":"Ackermann.html#ack/2","title":"Ackermann.ack/2","type":"function"},{"doc":"Documentation for Binary search tree data structure.","ref":"BST.html","title":"BST","type":"module"},{"doc":"Insert a new node to the given tree. Average time complexity: O(log n) Worst time complexity: O(n)Examplesiex&gt; BST.insert(nil, 2) %{key: 2, left: nil, right: nil, parent: nil}","ref":"BST.html#insert/2","title":"BST.insert/2","type":"function"},{"doc":"","ref":"BST.html#insert/3","title":"BST.insert/3","type":"function"},{"doc":"Returns a maximum node of a given subtreeExamplesiex&gt; BST.insert(nil, 2) |&gt; BST.insert(5) |&gt; BST.insert(1) |&gt; BST.maximum %{key: 5, left: nil, right: nil, parent: 2}","ref":"BST.html#maximum/1","title":"BST.maximum/1","type":"function"},{"doc":"Returns a minimum node of a given subtreeExamplesiex&gt; BST.insert(nil, 2) |&gt; BST.insert(5) |&gt; BST.insert(1) |&gt; BST.minimum %{key: 1, left: nil, right: nil, parent: 2}","ref":"BST.html#minimum/1","title":"BST.minimum/1","type":"function"},{"doc":"Create a new Binary Search Tree with root's value as the given 'key'Examplesiex&gt; BST.new(5) %{key: 5, left: nil, right: nil, parent: nil}","ref":"BST.html#new/2","title":"BST.new/2","type":"function"},{"doc":"Search a specific node by given searched_key in given subtree (or a whole tree) Average time complexity: O(log n) Worst time complexity: O(n)Examplesiex&gt; BST.insert(nil, 2) %{key: 2, left: nil, right: nil, parent: nil}","ref":"BST.html#search/2","title":"BST.search/2","type":"function"},{"doc":"Documentation for Binary search algorithmAnnotationsn - number of elements in list","ref":"BinarySearch.html","title":"BinarySearch","type":"module"},{"doc":"Find number in list and return it index. Requires as input sorted list. Time complexity: O(log2n) Memory complexity: O(1)Examples iex&gt; BinarySearch.run([-1, 2, 3.00000001, 4], 3.00000001) 2 iex&gt; BinarySearch.run([0, 0, 0, 0, 1, 2, 3, 4], 0) 3","ref":"BinarySearch.html#run/2","title":"BinarySearch.run/2","type":"function"},{"doc":"Documentation for Bubble sort algorithm. All important informations about counting sort you can find on Wikipedia page.Annotationsn - number of elements in list","ref":"Bubblesort.html","title":"Bubblesort","type":"module"},{"doc":"Sort list Best-case performance: O(n) Average performance: O(n^2) Worst-case performance: O(n^2)Examples # iex&gt; Bubblesort.run([4, 1, 3, 2]) # [1, 2, 3, 4] # iex&gt; Bubblesort.run([-2.0, 0, 4, 1, 3, 2]) # [-2.0, 0, 1, 2, 3, 4]","ref":"Bubblesort.html#run/1","title":"Bubblesort.run/1","type":"function"},{"doc":"","ref":"Bubblesort.html#run_internal/1","title":"Bubblesort.run_internal/1","type":"function"},{"doc":"Documentation for Cartesian.","ref":"Cartesian.html","title":"Cartesian","type":"module"},{"doc":"Determine in which quadrant at two dimensional Cartesian plane point are.Examplesiex&gt; Cartesian.determine_octan(%{x: 1, y: 2, z: 3}) 0 iex&gt; Cartesian.determine_octan(%{x: 0, y: 0, z: 3}) nil","ref":"Cartesian.html#determine_octan/1","title":"Cartesian.determine_octan/1","type":"function"},{"doc":"Determine in which quadrant at two dimensional Cartesian plane point are.Examplesiex&gt; Cartesian.determine_quadrant(%{x: 1, y: 2}) 1 iex&gt; Cartesian.determine_quadrant(%{x: 0, y: 0}) nil","ref":"Cartesian.html#determine_quadrant/1","title":"Cartesian.determine_quadrant/1","type":"function"},{"doc":"Order points by distance between them. Returns 1 if A is nearer thatn B, else returns -1Examplesiex&gt; Cartesian.order_by_distance(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3}) -1","ref":"Cartesian.html#order_by_distance/2","title":"Cartesian.order_by_distance/2","type":"function"},{"doc":"Order points looking by x parametr value. Returns 1 if A is nearer thatn B, else returns -1Examplesiex&gt; Cartesian.order_by_x(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3}) -1","ref":"Cartesian.html#order_by_x/2","title":"Cartesian.order_by_x/2","type":"function"},{"doc":"Order points looking by y parametr value. Returns 1 if A is nearer thatn B, else returns -1Examplesiex&gt; Cartesian.order_by_y(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3}) 1","ref":"Cartesian.html#order_by_y/2","title":"Cartesian.order_by_y/2","type":"function"},{"doc":"Order points looking by z parametr value. Returns 1 if A is nearer thatn B, else returns -1Examplesiex&gt; Cartesian.order_by_z(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3}) 1","ref":"Cartesian.html#order_by_z/2","title":"Cartesian.order_by_z/2","type":"function"},{"doc":"Calculates the proximity to the nearest point. More info hereExamplesiex&gt; Cartesian.proximity(%{x: 1, y: 2, z: 3}) 6","ref":"Cartesian.html#proximity/1","title":"Cartesian.proximity/1","type":"function"},{"doc":"Documentation for Counting sort algorithm. All important informations about counting sort you can find on Wikipedia page.Annotationsn - number of elements in list","ref":"Countingsort.html","title":"Countingsort","type":"module"},{"doc":"Sort list Normal complexity: O(n)Examples # iex&gt; Countingsort.run([4, 1, 3, 5, 2]) # [1, 2, 3, 4]","ref":"Countingsort.html#run/1","title":"Countingsort.run/1","type":"function"},{"doc":"Documentation for Easing.Annotationst - current time (seconds or miliseconds)b - start valuec - change in valued - duration (seconds or miliseconds)","ref":"Easing.html","title":"Easing","type":"module"},{"doc":"Cubic easing in - accelerating from zero velocity Examplesiex&gt; Easing.ease_in_cubic(1, 2, 3, 4) 2.046875","ref":"Easing.html#ease_in_cubic/4","title":"Easing.ease_in_cubic/4","type":"function"},{"doc":"Cubic easing in/out - acceleration until halfway, then deceleration Examplesiex&gt; Easing.ease_in_out_cubic(1, 2, 3, 4) 2.1875","ref":"Easing.html#ease_in_out_cubic/4","title":"Easing.ease_in_out_cubic/4","type":"function"},{"doc":"Quadratic easing in/out - acceleration until halfway, then decelerationExamplesiex&gt; Easing.ease_in_out_quad(1, 2, 3, 4) 1.625","ref":"Easing.html#ease_in_out_quad/4","title":"Easing.ease_in_out_quad/4","type":"function"},{"doc":"Quintic easing in/out - acceleration until halfway, then deceleration Examplesiex&gt; Easing.ease_in_out_quart(1, 2, 3, 4) 2.046875","ref":"Easing.html#ease_in_out_quart/4","title":"Easing.ease_in_out_quart/4","type":"function"},{"doc":"Quadratic easing in - accelerating from zero velocity Examplesiex&gt; Easing.ease_in_quad(1, 2, 3, 4) 2.1875","ref":"Easing.html#ease_in_quad/4","title":"Easing.ease_in_quad/4","type":"function"},{"doc":"Quartic easing in - accelerating from zero velocity Examplesiex&gt; Easing.ease_in_quart(1, 2, 3, 4) 2.01171875","ref":"Easing.html#ease_in_quart/4","title":"Easing.ease_in_quart/4","type":"function"},{"doc":"Cubic easing out - decelerating to zero velocity Examplesiex&gt; Easing.ease_out_cubic(1, 2, 3, 4) 3.734375","ref":"Easing.html#ease_out_cubic/4","title":"Easing.ease_out_cubic/4","type":"function"},{"doc":"Quadratic easing out - decelerating to zero velocity Examplesiex&gt; Easing.ease_out_quad(1, 2, 3, 4) 3.3125","ref":"Easing.html#ease_out_quad/4","title":"Easing.ease_out_quad/4","type":"function"},{"doc":"Quartic easing out - decelerating to zero velocity Examplesiex&gt; Easing.ease_out_quart(1, 2, 3, 4) 4.05078125","ref":"Easing.html#ease_out_quart/4","title":"Easing.ease_out_quart/4","type":"function"},{"doc":"Simple linear tweening - no easing, no acceleration Examplesiex&gt; Easing.linear_tween(1, 2, 3, 4) 2.75","ref":"Easing.html#linear_tween/4","title":"Easing.linear_tween/4","type":"function"},{"doc":"Documentation for Fibonacci sequence.","ref":"Fibonacci.html","title":"Fibonacci","type":"module"},{"doc":"Returns result of Fibonacci SequenceExamplesiex&gt; Fibonacci.sequence(1) 1 iex&gt; Fibonacci.sequence(10) 55","ref":"Fibonacci.html#sequence/1","title":"Fibonacci.sequence/1","type":"function"},{"doc":"Documentation for Heap data structureAnnotationsn - number of elements in heap","ref":"Heap.html","title":"Heap","type":"module"},{"doc":"Method complexity: O(n) Restores ownership of a whole heap to Heap[parent(i)] &gt;= Heap[i], so build heap maxExamplesiex&gt; Heap.build_heap([4, 1, 3, 2, 16, 9, 10, 14, 8, 7], :max) [16, 14, 10, 8, 7, 9, 3, 2, 4, 1] iex&gt; Heap.build_heap([16, 4, 9, 14, 7, 10, 3, 2, 8, 1], :max) [16, 14, 10, 8, 7, 9, 3, 2, 4, 1] iex&gt; Heap.build_heap([16, 4, 9, 14, 7, 10, 3, 2, 8, 1], :min) [1, 2, 3, 8, 4, 10, 9, 14, 16, 7]","ref":"Heap.html#build_heap/2","title":"Heap.build_heap/2","type":"function"},{"doc":"Return left element of indexExamplesiex&gt; Heap.left(2) 5 iex&gt; Heap.left(4) 9","ref":"Heap.html#left/1","title":"Heap.left/1","type":"function"},{"doc":"Method complexity: O(lgn) Max heapify changes list of elements in max heap where for each elements of list (except root) ownership takes place: Heap[parent(i)] &gt;= Heap[i]Examplesiex&gt; Heap.max_heapify([16, 4, 10, 14, 7, 9, 3, 2, 8, 1], 1) [16, 14, 10, 8, 7, 9, 3, 2, 4, 1]","ref":"Heap.html#max_heapify/3","title":"Heap.max_heapify/3","type":"function"},{"doc":"Method complexity: O(lgn) Min heapify changes list of elements in min heap where for each elements of list (except root) ownership takes place: Heap[parent(i)] &lt;= Heap[i]Examplesiex&gt; Heap.min_heapify([1, 4, 10, 14, 7, 9, 3, 2, 8, 16], 1) [1, 4, 10, 14, 7, 9, 3, 2, 8, 16]","ref":"Heap.html#min_heapify/3","title":"Heap.min_heapify/3","type":"function"},{"doc":"Create new, empty HeapExamplesiex&gt; Heap.new() []","ref":"Heap.html#new/0","title":"Heap.new/0","type":"function"},{"doc":"Return parent indexExamplesiex&gt; Heap.parent(7) 3 iex&gt; Heap.parent(0) nil","ref":"Heap.html#parent/1","title":"Heap.parent/1","type":"function"},{"doc":"Return right element of indexExamplesiex&gt; Heap.right(2) 6","ref":"Heap.html#right/1","title":"Heap.right/1","type":"function"},{"doc":"Documentation for Insertion sort algorithm. All important informations about counting sort you can find on Wikipedia page.Annotationsn - number of elements in list","ref":"Insertionsort.html","title":"Insertionsort","type":"module"},{"doc":"Sort list Worst-case performance: O(n^2) Average performance: O(n^2) Best-case performance: O(n) - for already sorted or empty listsExamples iex&gt; Insertionsort.run([4, 1, 3, 2]) [1, 2, 3, 4] iex&gt; Insertionsort.run([-7, 0, 0, -2, -3, 5, 2]) [-7, -3, -2, 0, 0, 2, 5]","ref":"Insertionsort.html#run/1","title":"Insertionsort.run/1","type":"function"},{"doc":"Documentation for Isometric.","ref":"Isometric.html","title":"Isometric","type":"module"},{"doc":"Projects 2D/3D carthesian coordinates to 2D isometric coordinates. The X axis goes from top-left to bottom-right. The Y axis goes from top-right to bottom-left. The Z axis goes straight up.Examplesiex&gt; Isometric.convert_cartesian_to_isometric(1, 2) %{x: -1, y: 1.5}","ref":"Isometric.html#convert_cartesian_to_isometric/3","title":"Isometric.convert_cartesian_to_isometric/3","type":"function"},{"doc":"Convert string to point (2D or 3D)Examplesiex&gt; Isometric.distance_between(%{x: -1, y: 2}, %{x: 1, y: 2}) 2 iex&gt; Isometric.distance_between(%{x: -91, y: -20}, %{x: -10, y: 2}) 103","ref":"Isometric.html#distance_between/2","title":"Isometric.distance_between/2","type":"function"},{"doc":"Convert point to stringExamplesiex&gt; Isometric.point_to_string(%{x: 1, y: 2, z: 3}) &quot;x: 1, y: 2, z: 3&quot;","ref":"Isometric.html#point_to_string/1","title":"Isometric.point_to_string/1","type":"function"},{"doc":"Convert string to point (2D or 3D)Examplesiex&gt; Isometric.string_to_point(&quot;x: 1, y: 2, z: 3&quot;) %{x: 1, y: 2, z: 3}","ref":"Isometric.html#string_to_point/1","title":"Isometric.string_to_point/1","type":"function"},{"doc":"Convert coorddinates to stringExamplesiex&gt; Isometric.to_string(1, 2) &quot;x: 1, y: 2&quot;","ref":"Isometric.html#to_string/2","title":"Isometric.to_string/2","type":"function"},{"doc":"Convert coorddinates to stringExamplesiex&gt; Isometric.to_string(1, 2, 3) &quot;x: 1, y: 2, z: 3&quot;","ref":"Isometric.html#to_string/3","title":"Isometric.to_string/3","type":"function"},{"doc":"Documentation for Number.","ref":"Number.html","title":"Number","type":"module"},{"doc":"Puts a given number to min-max range. In other words, input value will be minimum equal to min value or maximum equal to max value. Function assumes min &lt; maxExamplesiex&gt; Number.clamp(10, 1, 2) 2","ref":"Number.html#clamp/3","title":"Number.clamp/3","type":"function"},{"doc":"Check if y is power of xExamplesiex&gt; Number.is_power(10, 1) false","ref":"Number.html#is_power/2","title":"Number.is_power/2","type":"function"},{"doc":"Determines whether number is equal to the other by given epsilon.Examples# iex&gt; Number.nearly_equal(1, 1) # true # iex&gt; Number.nearly_equal(1, 1, 5) # true # iex&gt; Number.nearly_equal(-2, 1, 2) # false","ref":"Number.html#nearly_equal/3","title":"Number.nearly_equal/3","type":"function"},{"doc":"Documentation for PriorityQueue data structure implemented on general balanced trees by Arne Andersson These have no storage overhead compared to unbalanced binary trees, and their performance is better than AVL trees.More about GB trees on Arne Andersson work","ref":"PriorityQueue.html","title":"PriorityQueue","type":"module"},{"doc":"Add a new element with priority to queueExamplesiex&gt; PriorityQueue.new |&gt; PriorityQueue.insert(&quot;Do homework&quot;, 4) {1, {4, &quot;Do homework&quot;, nil, nil}}","ref":"PriorityQueue.html#insert/3","title":"PriorityQueue.insert/3","type":"function"},{"doc":"Checkout if queue is emptyExamplesiex&gt; PriorityQueue.new |&gt; PriorityQueue.insert(&quot;Do homework&quot;, 4) |&gt; PriorityQueue.is_empty false iex&gt; PriorityQueue.new |&gt; PriorityQueue.is_empty true","ref":"PriorityQueue.html#is_empty/1","title":"PriorityQueue.is_empty/1","type":"function"},{"doc":"Create a new, empty qeueExamplesiex&gt; PriorityQueue.new {0, nil}","ref":"PriorityQueue.html#new/0","title":"PriorityQueue.new/0","type":"function"},{"doc":"Return peek element of queueExamplesiex&gt; PriorityQueue.new |&gt; PriorityQueue.insert(&quot;Do homework&quot;, 4) |&gt; PriorityQueue.peek &quot;Do homework&quot;","ref":"PriorityQueue.html#peek/1","title":"PriorityQueue.peek/1","type":"function"},{"doc":"Return number of elements in queueExamplesiex&gt; PriorityQueue.new |&gt; PriorityQueue.insert(&quot;Do homework&quot;, 4) |&gt; PriorityQueue.size 1","ref":"PriorityQueue.html#size/1","title":"PriorityQueue.size/1","type":"function"},{"doc":"Checkout if queue is emptyExamplesiex&gt; PriorityQueue.new iex&gt; |&gt; PriorityQueue.insert(&quot;Do4&quot;, 4) iex&gt; |&gt; PriorityQueue.insert(&quot;Do1&quot;, 1) iex&gt; |&gt; PriorityQueue.to_list [{1, &quot;Do1&quot;}, {4, &quot;Do4&quot;}]","ref":"PriorityQueue.html#to_list/1","title":"PriorityQueue.to_list/1","type":"function"},{"doc":"Remove element from queue with the higest priorityExamplesiex&gt; PriorityQueue.new |&gt; PriorityQueue.insert(&quot;Do homework&quot;, 4) |&gt; PriorityQueue.top {0, nil}","ref":"PriorityQueue.html#top/1","title":"PriorityQueue.top/1","type":"function"},{"doc":"Documentation for Queue data structure","ref":"Queue.html","title":"Queue","type":"module"},{"doc":"Delete element from queueExamplesiex&gt; Queue.dequeue([1]) [] iex&gt; Queue.dequeue([]) [] iex&gt; Queue.dequeue([1, 2, 3]) [2, 3]","ref":"Queue.html#dequeue/1","title":"Queue.dequeue/1","type":"function"},{"doc":"Add element to queueExamplesiex&gt; Queue.enqueue([1], 2) [1, 2]","ref":"Queue.html#enqueue/2","title":"Queue.enqueue/2","type":"function"},{"doc":"Check if queue is emptyExamplesiex&gt; Queue.is_empty([]) true","ref":"Queue.html#is_empty/1","title":"Queue.is_empty/1","type":"function"},{"doc":"Create a new, empty qeueExamplesiex&gt; Queue.new() []","ref":"Queue.html#new/0","title":"Queue.new/0","type":"function"},{"doc":"Documentation for Quick sort algorithm. All important informations about counting sort you can find on Wikipedia page.Annotationsn - number of elements in list","ref":"Quicksort.html","title":"Quicksort","type":"module"},{"doc":"Sort list Pesimistic complexity: O(n^2) Normal complexity: O(nlgn)Examples # iex&gt; Quicksort.run([4, 1, 3, 2]) # [1, 2, 3, 4] # iex&gt; Quicksort.run([-2.0, 0, 4, 1, 3, 2]) # [-2.0, 0, 1, 2, 3, 4]","ref":"Quicksort.html#run/1","title":"Quicksort.run/1","type":"function"},{"doc":"Documentation for Stack data structure","ref":"Stack.html","title":"Stack","type":"module"},{"doc":"Check if stack is emptyExamplesiex&gt; Stack.is_empty([]) true","ref":"Stack.html#is_empty/1","title":"Stack.is_empty/1","type":"function"},{"doc":"Create new, empty stackExamplesiex&gt; Stack.new() [] iex&gt; Stack.new() |&gt; Stack.push([1, 2, 3]) [1, 2, 3] iex&gt; Stack.new() |&gt; Stack.push([1, 2, 3, 4]) |&gt; Stack.pop() [1, 2, 3]","ref":"Stack.html#new/0","title":"Stack.new/0","type":"function"},{"doc":"Delete top element of stackExamplesiex&gt; Stack.pop([]) [] iex&gt; Stack.pop([1]) []","ref":"Stack.html#pop/1","title":"Stack.pop/1","type":"function"},{"doc":"Add new element on the top of stackExamplesiex&gt; Stack.push([], 1) [1] iex&gt; Stack.push([1, 2], 3) [1, 2, 3] iex&gt; Stack.push([1, 2], [3, 4, 5]) [1, 2, 3, 4, 5]","ref":"Stack.html#push/2","title":"Stack.push/2","type":"function"},{"doc":"Documentation for Project Stella. Rapid pure elixir library providing implementations of the most famous algorithms, data structures and math functions","ref":"Stella.html","title":"Stella","type":"module"},{"doc":"Return current stella versionExamplesiex&gt; Stella.version &#39;0.4.0&#39;","ref":"Stella.html#version/0","title":"Stella.version/0","type":"function"},{"doc":"Documentation for Time.","ref":"Time.html","title":"Time","type":"module"},{"doc":"Converts HH:MM:SS time type to seconds (integer)Examplesiex&gt; Time.hms_to_ms(&quot;0:1:10&quot;) 70000","ref":"Time.html#hms_to_ms/1","title":"Time.hms_to_ms/1","type":"function"},{"doc":"Converts HH:MM:SS time type to seconds (integer)Examplesiex&gt; Time.hms_to_sec(&quot;0:1:10&quot;) 70","ref":"Time.html#hms_to_sec/1","title":"Time.hms_to_sec/1","type":"function"},{"doc":"Converts miliseconds to seconds (float)Examplesiex&gt; Time.ms_to_sec(1000) 1.0","ref":"Time.html#ms_to_sec/1","title":"Time.ms_to_sec/1","type":"function"},{"doc":"Converts seconds to miliseconds (integer)Examplesiex&gt; Time.sec_to_ms(1) 1000","ref":"Time.html#sec_to_ms/1","title":"Time.sec_to_ms/1","type":"function"},{"doc":"Documentation for Vector 2D.","ref":"Vector2D.html","title":"Vector2D","type":"module"},{"doc":"Increment one vector by another oneExamplesiex&gt; Vector2D.add(%{x: 2, y: 2}, %{x: 2, y: 2}) %{x: 4, y: 4} iex&gt; Vector2D.new(-3, 3) |&gt; Vector2D.add(%{x: 3, y: 6}) %{x: 0, y: 9}","ref":"Vector2D.html#add/2","title":"Vector2D.add/2","type":"function"},{"doc":"Calculate distance between vectorsExamplesiex&gt; Vector2D.distance(%{x: 2.0, y: 2.0}, %{x: 2, y: 2.0}) 0.0 iex&gt; Vector2D.distance(%{x: -2, y: 4}, %{x: 2, y: 2.0}) 4.47213595499958","ref":"Vector2D.html#distance/2","title":"Vector2D.distance/2","type":"function"},{"doc":"Divide vector by another oneExamplesiex&gt; Vector2D.divide(%{x: 2, y: 2}, %{x: 2, y: 2}) %{x: 1.0, y: 1.0} iex&gt; Vector2D.new(-3, 3) |&gt; Vector2D.divide(%{x: 2, y: 3}) %{x: -1.5, y: 1.0}","ref":"Vector2D.html#divide/2","title":"Vector2D.divide/2","type":"function"},{"doc":"Check if given vectors are equalExamplesiex&gt; Vector2D.equals(%{x: 2, y: 2}, %{x: 2, y: 2}) true iex&gt; Vector2D.equals(%{x: 2, y: 2}, %{x: 2.0, y: 2.0}) true iex&gt; Vector2D.equals(%{x: 2.0, y: 2.0}, %{x: 2, y: 2}) true iex&gt; Vector2D.equals(%{x: 2.0, y: 2.0}, %{x: 2, y: 2.0}) true iex&gt; Vector2D.new(-3, 3) |&gt; Vector2D.equals(%{x: 2, y: 3}) false","ref":"Vector2D.html#equals/2","title":"Vector2D.equals/2","type":"function"},{"doc":"Returns vector lengthTwo dimensional vector length chartExamplesiex&gt; Vector2D.length(%{x: 2, y: 2}) 2.8284271247461903 iex&gt; Vector2D.new(-3, 3) |&gt; Vector2D.length() 4.242640687119285","ref":"Vector2D.html#length/1","title":"Vector2D.length/1","type":"function"},{"doc":"Multiply vector by another oneExamplesiex&gt; Vector2D.multiply(%{x: 2, y: 2}, %{x: 2, y: 2}) %{x: 4, y: 4} iex&gt; Vector2D.new(-3, 3) |&gt; Vector2D.multiply(%{x: 2, y: 3}) %{x: -6, y: 9}","ref":"Vector2D.html#multiply/2","title":"Vector2D.multiply/2","type":"function"},{"doc":"Create a new two dimensional vector from given valuesExamplesiex&gt; Vector2D.new(10, 1) %{x: 10, y: 1} iex&gt; Vector2D.new() %{x: 0, y: 0}","ref":"Vector2D.html#new/2","title":"Vector2D.new/2","type":"function"},{"doc":"Rotate vector by angelExamplesiex&gt; Vector2D.rotate(%{x: 2.0, y: 2.0}, 2) %{x: -2.650888526745648, y: 0.9863011805570786}","ref":"Vector2D.html#rotate/2","title":"Vector2D.rotate/2","type":"function"},{"doc":"Scale vector by given scalarExamplesiex&gt; Vector2D.scale(%{x: 2, y: 2}, 2) %{x: 4, y: 4} iex&gt; Vector2D.new(-3, 3) |&gt; Vector2D.scale(3) %{x: -9, y: 9}","ref":"Vector2D.html#scale/2","title":"Vector2D.scale/2","type":"function"},{"doc":"Decrement one vector by another oneExamplesiex&gt; Vector2D.sub(%{x: 2, y: 2}, %{x: 2, y: 2}) %{x: 0, y: 0} iex&gt; Vector2D.new(-3, 3) |&gt; Vector2D.sub(%{x: 3, y: 6}) %{x: -6, y: -3}","ref":"Vector2D.html#sub/2","title":"Vector2D.sub/2","type":"function"},{"doc":"Convert vector from struct to listExamplesiex&gt; Vector2D.to_list(%{x: 1, y: 2}) [1, 2]","ref":"Vector2D.html#to_list/1","title":"Vector2D.to_list/1","type":"function"},{"doc":"Convert vector from list to structExamplesiex&gt; Vector2D.to_struct([1, 2]) %{x: 1, y: 2}","ref":"Vector2D.html#to_struct/1","title":"Vector2D.to_struct/1","type":"function"},{"doc":"Documentation for Vector 3D.","ref":"Vector3D.html","title":"Vector3D","type":"module"},{"doc":"Increment one vector by another oneExamplesiex&gt; Vector3D.add(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2}) %{x: 4, y: 4, z: 4} iex&gt; Vector3D.new(-3, 3, 4) |&gt; Vector3D.add(%{x: 3, y: 6, z: 3}) %{x: 0, y: 9, z: 7}","ref":"Vector3D.html#add/2","title":"Vector3D.add/2","type":"function"},{"doc":"Calculate distance between vectorsExamplesiex&gt; Vector3D.distance(%{x: 2.0, y: 2.0, z: 2.0}, %{x: 2, y: 2.0, z: 2.0}) 0.0 iex&gt; Vector3D.distance(%{x: -2, y: 4, z: 5}, %{x: 2, y: 2.0, z: 1}) 6.0","ref":"Vector3D.html#distance/2","title":"Vector3D.distance/2","type":"function"},{"doc":"Divide vector by another oneExamplesiex&gt; Vector3D.divide(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2}) %{x: 1.0, y: 1.0, z: 1.0} iex&gt; Vector3D.new(-3, 3, 3) |&gt; Vector3D.divide(%{x: 2, y: 3, z: 2}) %{x: -1.5, y: 1.0, z: 1.5}","ref":"Vector3D.html#divide/2","title":"Vector3D.divide/2","type":"function"},{"doc":"Check if given vectors are equalExamplesiex&gt; Vector3D.equals(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2}) true iex&gt; Vector3D.equals(%{x: 2, y: 2, z: 2}, %{x: 2.0, y: 2.0, z: 2.0}) true iex&gt; Vector3D.equals(%{x: 2.0, y: 2.0, z: 2.0}, %{x: 2, y: 2, z: 2}) true iex&gt; Vector3D.equals(%{x: 2.0, y: 2.0, z: 2.0}, %{x: 2, y: 2.0, z: 2.0}) true iex&gt; Vector3D.new(-3, 3, 3) |&gt; Vector3D.equals(%{x: 2, y: 3, z: 2}) false","ref":"Vector3D.html#equals/2","title":"Vector3D.equals/2","type":"function"},{"doc":"Returns vector lengthTwo dimensional vector length chartExamplesiex&gt; Vector3D.length(%{x: 2, y: 2, z: 2}) 3.4641016151377544 iex&gt; Vector3D.new(-3, 3, 1) |&gt; Vector3D.length() 4.358898943540674","ref":"Vector3D.html#length/1","title":"Vector3D.length/1","type":"function"},{"doc":"Multiply vector by another oneExamplesiex&gt; Vector3D.multiply(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2}) %{x: 4, y: 4, z: 4} iex&gt; Vector3D.new(-3, 3, 2) |&gt; Vector3D.multiply(%{x: 2, y: 3, z: 2}) %{x: -6, y: 9, z: 4}","ref":"Vector3D.html#multiply/2","title":"Vector3D.multiply/2","type":"function"},{"doc":"Create a new two dimensional vector from given valuesExamplesiex&gt; Vector3D.new(10, 1) %{x: 10, y: 1, z: 0} iex&gt; Vector3D.new() %{x: 0, y: 0, z: 0}","ref":"Vector3D.html#new/3","title":"Vector3D.new/3","type":"function"},{"doc":"Scale vector by given scalarExamplesiex&gt; Vector3D.scale(%{x: 2, y: 2, z: 2}, 2) %{x: 4, y: 4, z: 4} iex&gt; Vector3D.new(-3, 3, 1) |&gt; Vector3D.scale(3) %{x: -9, y: 9, z: 3}","ref":"Vector3D.html#scale/2","title":"Vector3D.scale/2","type":"function"},{"doc":"Decrement one vector by another oneExamplesiex&gt; Vector3D.sub(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2}) %{x: 0, y: 0, z: 0} iex&gt; Vector3D.new(-3, 3, 5) |&gt; Vector3D.sub(%{x: 3, y: 6, z: 5}) %{x: -6, y: -3, z: 0}","ref":"Vector3D.html#sub/2","title":"Vector3D.sub/2","type":"function"},{"doc":"Convert vector from struct to listExamplesiex&gt; Vector3D.to_list(%{x: 1, y: 2, z: 3}) [1, 2, 3]","ref":"Vector3D.html#to_list/1","title":"Vector3D.to_list/1","type":"function"},{"doc":"Convert vector from list to structExamplesiex&gt; Vector3D.to_struct([1, 2, 3]) %{x: 1, y: 2, z: 3}","ref":"Vector3D.html#to_struct/1","title":"Vector3D.to_struct/1","type":"function"},{"doc":"StellaRapid elixir library providing implementations of the most famous algorithms, data structures and math functions. Key features of this library are:a high test coverage (near to 100%)good quality documentation with examples of usage to each functionfeatured complexity of each action","ref":"readme.html","title":"Stella","type":"extras"},{"doc":"The package can be installed by adding stella to your list of dependencies in mix.exs:def deps do [ {:stella, &quot;~&gt; 0.4.0&quot;} ] endLink to hex package: https://hex.pm/packages/stella","ref":"readme.html#installation","title":"Stella - Installation","type":"extras"},{"doc":"Generated with ExDoc: https://hexdocs.pm/stella/Stella.html","ref":"readme.html#documentation","title":"Stella - Documentation","type":"extras"},{"doc":"Math[x] Cartesian[x] Easing functions[x] Isometric[x] Common number operations like cplam, nearly equal, is power etc[x] Time converter[x] Vector 2D[x] Vector 3D[x] Ackermann function[x] Fibonacci sequenceAlgorithms[x] Quick sort[x] Counting sort[x] Insertion sort[x] Binary search[x] Bubble sortData structures[x] Queue[x] Stack[x] Max and Min Heap[x] Priority queue[ ] Binary Search Tree","ref":"readme.html#content-of-version-0-4-0-planned-november-2020","title":"Stella - Content of version 0.4.0 (planned November 2020)","type":"extras"},{"doc":"Version 0.4.0 (unreleased)Stella module can return current version of packageAdd Fibonacci sequenceAdd implementation of counting sortCreate clamp method for a Number module that clamps number in min-max rangeCreate nearly equal method to Number module that determines whether number is equal to the other by given epsilonAdd Binary search algorithmCreate implementation of insertion sortCreate Elixir's implementation of bubble sortVersion 0.3.1 (23 August 2020)Fix Heap documentation examplesFix unused variablesRename some unit test headers to more appropriateVersion 0.3.0 (22 August 2020)Add Ackermann functionCreate implementation of Quicksort algorithmCreate implementation of Queue data structureCreate implementation of Stack data structureAdd service of cartesian diagramCreate implementation of two dimensional vector Create implementation of three dimensional vector Add quick sortAdd easing functionsAdd service of isometric layoutImplement max and min heapVersion 0.2.0 (5 August 2020)Add basic number operationsCreate time converterVersion 0.1.0 (4 August 2020)Create initial project packageCreate proof of concept","ref":"readme.html#changelog","title":"Stella - Changelog","type":"extras"}]