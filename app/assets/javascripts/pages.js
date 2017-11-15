function searchMeaning() {
  var slug = encodeURIComponent($('[data-search-input]').val())
  location.href= '/meaning-of/'+slug+'/'+slug;
  return false;
}
