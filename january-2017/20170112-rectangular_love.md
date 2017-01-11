Source: Interview Cake

A crack team of love scientists from OkEros (a hot new dating site) have devised a way to represent dating profiles as rectangles on a two-dimensional plane.

They need help writing an algorithm to find the intersection of two users' love rectangles. They suspect finding that intersection is the key to a matching algorithm so powerful it will cause an immediate acquisition by Google or Facebook or Obama or something.

![](https://www.interviewcake.com/images/svgs/rectangular_love__it_must_be_love.svg?bust=135)

**Write a function to find the rectangular intersection of two given love rectangles.**

As with the example above, love rectangles are always "straight" and never "diagonal." More rigorously: each side is parallel with either the x-axis or the y-axis.

They are defined as hashes like this :

```ruby
  my_rectangle = {

    # coordinates of bottom-left corner
    'left_x' => 1,
    'bottom_y' => 5,

    # width and height
    'width' => 10,
    'height' => 4,

}
```

Your output rectangle should use this format as well.
