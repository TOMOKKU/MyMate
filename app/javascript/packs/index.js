slide_class_list = ["slide-hidden", "slide-appear"]
button_class_list = ["fa-magnifying-glass", "fa-angle-right"]
slide_flag = 0

document.addEventListener('turbolinks:load', () => {
    const clickButton = document.getElementById("search_show_button");
    clickButton.addEventListener('click', (event) => {
		a = slide_flag
		b = (slide_flag + 1) % 2
        let search_form = document.getElementById("search_form");
		let search_show_button = document.getElementById("search_show_button")
		search_form.classList.replace(slide_class_list[a], slide_class_list[b]);
		search_show_button.classList.replace(button_class_list[a], button_class_list[b]);
		slide_flag = b
    });
});

