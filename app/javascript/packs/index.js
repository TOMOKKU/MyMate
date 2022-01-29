document.addEventListener('turbolinks:load', () => {
    const clickButton = document.getElementById("search_show_button");
    clickButton.addEventListener('click', (event) => {
        let search_form = document.getElementById("search_form");
		search_form.classList.add("slide")
    });
});
