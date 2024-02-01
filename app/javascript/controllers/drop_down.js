document.addEventListener('DOMContentLoaded', function() {
  const dropdown = document.querySelector('#avatar');
  const dropdownMenu = document.querySelector('#drop');

  dropdown.addEventListener('click', function(event) {
    event.stopPropagation();
    dropdownMenu.classList.toggle('hide');
  });

  window.addEventListener('click', function() {
    if (dropdownMenu.classList.contains('show')) {
      dropdownMenu.classList.remove('show');
    }
  });
});
