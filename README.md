# animated_page_view

`animated_page_view_scrolling` Beauty PageView Scrolling Package For Flutter.


![Screen-Recording-1402-01-17-at-01 22 54](https://user-images.githubusercontent.com/25421480/230220827-dfc83d26-1772-4d59-87ae-29618a2a1173.gif)



## Getting started

To use this package, add animated_page_view_scrolling as a dependency in your pubspec.yaml file.

## Usage

example:

```dart
    AnimatedPageViewScrolling(
        myModel: modelValue1,
        heightMainPageView: 400,
        heightItem: 320,
        viewportFraction: 0.80,
        imageMode: ImageMode.network,

      )
```
create assets folder in your root project and create into assets folder images folder and put your images in this folder.
add in pubspec.yaml assets/images and put name it to custom model

`assets/images`

just put name of image to the model

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
## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/AydinGolMohammadi"><img src="https://avatars.githubusercontent.com/u/117850360?v=4" width="100px;" alt=""/><br /><sub><b>Aydin Golmohammadi</b></sub></a><br /><a href="https://github.com/iManYarahmadi/animated_page_view_scrolling/commits?author=EhsanAramide" title="Code">💻</a> <a href="https://github.com/iManYarahmadi/animated_page_view_scrolling?author=EhsanAramide" title="Documentation">📖</a> <a href="#example-aydingolmohammadi" title="Examples">💡</a> <a href="#maintenance-aydingolmohammadi" title="Maintenance">🚧</a> <a href="https://github.com/iManYarahmadi/animated_page_view_scrolling/pull/2" title="Reviewed Pull Requests">👀</a> <a href="https://github.com/iManYarahmadi/animated_page_view_scrolling?author=aydingolmohammadi" title="Tests">⚠️</a></td>
    </sub></a><br /></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
## See also

 - [github repo](https://github.com/iManYarahmadi/animated_page_view_scrolling.git) 
