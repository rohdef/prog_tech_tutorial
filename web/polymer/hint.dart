import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag("tutorial-hint")
class TutorialHint extends PolymerElement {
  bool _contentVisible = false;
  
  TutorialHint.created() : super.created();
  
  void showHint(Event e, var detail, Node target) {
    _contentVisible = !_contentVisible;
    var content = shadowRoot.querySelector(".hint-content");
    
    if (_contentVisible)
      content.style.display = "block";
    else
      content.style.display = "none";
  }
}