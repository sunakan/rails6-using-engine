window.addEventListener("load", () => {
  console.log("=============================")
  console.log("HelloWorld Webpack(no engine)")
  console.log("=============================")
  document.querySelectorAll("h1").forEach((h1) => {
    h1.style.color = "purple"
  })
  var h3 = document.createElement("h3")
  h3.innerHTML = "Webpack管理下のjsで追加したh3(not engine)"
  document.querySelector("body").appendChild(h3)
})
