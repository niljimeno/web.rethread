var form = document.getElementsByTagName("form")[0]

addEventListener("submit", function (e) {
  e.preventDefault()

  var formData = new FormData(form)

  var query = formData.get("q")
  var pattern = /^((http|https|ftp):\/\/)/

  var url

  if (pattern.test(query)) {
      url = query
  } else if (query.includes(".")) {
      url = "https://" + query
  } else {
      url = "https://duckduckgo.com/" + query
  }

  window.location.href = url;
})
