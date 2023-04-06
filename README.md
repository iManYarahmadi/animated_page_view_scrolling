# animated_page_view

`animated_page_view_scrolling` Beauty PageView Scrolling Package For Flutter.


![Screen-Recording-1402-01-17-at-01 22 54](https://user-images.githubusercontent.com/25421480/230220827-dfc83d26-1772-4d59-87ae-29618a2a1173.gif)



## Getting started

To use this package, add animated_page_view_scrolling as a dependency in your pubspec.yaml file.

## Usage

example:

```dart
    AnimatedPageView(
        myModel: modelValue1,
        heightMainPageView: 400,
        heightItem: 320,
        viewportFraction: 0.80,
      )
```
create assets folder in your root project and create into assets folder images folder and put your images in this folder.
add in pubspec.yaml assets/images and put name it to custom model

Custom model:

```dart

class MyModel1 {
  String? image;

  MyModel1({this.image});
}

var modelValue1 = [
  MyModel1(
    image: 'mainp1.png',
  ),
  MyModel1(
    image: 'mainp2.png',
  ),
  MyModel1(
    image: 'mainp3.png',
  ),
];

```

## See also

 - [github repo](https://github.com/iManYarahmadi/animated_page_view_scrolling.git) 
