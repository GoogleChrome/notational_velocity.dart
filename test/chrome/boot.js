chrome.app.runtime.onLaunched.addListener(function() {
  chrome.app.window.create('chrome/harness_packaged.html', {
    'bounds': {
      'width': 1024,
      'height': 768
    }
  });
});
