@HtmlImport('my_element.html')
library web.forms.selecting_one_item_using_radio_buttons;

import 'dart:html' show Event, InputElement, Node;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property final List<String> colors = ['red', 'green', 'blue'];
  @property String selectedColor = '';

  MyElement.created() : super.created();

  @eventHandler
  void updateSelectedColor([Event e, _]) {
    set('selectedColor', (e.target as InputElement).value);
  }
}
