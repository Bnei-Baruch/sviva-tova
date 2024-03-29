(function(w, d) {
  const loader = function() {
    let s = d.createElement("script"), tag = d.getElementsByTagName("script")[0];
    s.src = "https://cdn.iubenda.com/iubenda.js";
    tag.parentNode.insertBefore(s, tag);
  };
  if (w.addEventListener) {
    w.addEventListener("load", loader, false);
  } else if (w.attachEvent) {
    w.attachEvent("onload", loader);
  } else {
    w.onload = loader;
  }
})
(window, document);
