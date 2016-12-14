HTMLWidgets.widget({
  name: "highlighter",
  type: "output",

  factory: function(el, code, width, height) {
    var highlight = document.getElementById(el.id);
    highlight.style.width = "100%";
    highlight.style.height = "";

    return {
      renderValue: function(code) {
        highlight.innerHTML = '<pre><code class="r">'+code+'</code></pre>';
        hljs.initHighlightingOnLoad();
      },
      resize: function() {

      },

      // Make the highlight object available as a property on the widget
      // instance we're returning from factory(). This is generally a
      // good idea for extensibility--it helps users of this widget
      // interact directly with sigma, if needed.
      highlight: highlight
    };
  }
});
