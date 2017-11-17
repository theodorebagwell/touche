function searchMeaning() {
  var slug = encodeURIComponent(document.querySelectorAll('[data-search-input]')[0].value)
  location.href= '/meaning-of/'+slug+'/'+slug;
  return false;
}
