var searchInput = document.getElementById("search-input");
var searchBtn = document.getElementById("search-btn");
var errorEl = document.getElementById("error");
var inputValue = searchInput.value.trim();

function input() {
    if (inputValue.length > 100) {
        searchBtn.setAttribute("disabled", "disabled");
        errorEl.innerHTML = "Text Length is over 100 characters or Cannot be null!";
    } else {
        searchBtn.removeAttribute("disabled");
        errorEl.innerHTML = "";
    }
}

function formSubmit() {
    searchInput.value = searchInput.value.trim();
}