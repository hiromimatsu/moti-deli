document.addEventListener("turbolinks:load"
, function () {
  $(function() {
    var search_list = $(".Article");
    function appendArticle(article){
      var html =
        `<a href="/articles/${article.id}" data-method="get">
          <img src="${article.image.url}" class="main-image">
        </a>`
      search_list.append(html);
    }
    function appendErrMsgToHTML(msg) {
      let html = `<div class='name'>${ msg }</div>`
      search_list.append(html);
    }
    $(".topTitle__search__form").on("keyup", function() {
      var input = $(".topTitle__search__form").val();
      $.ajax({
        type: 'GET',
        url: '/articles/search',
        data: { keyword: input },
        dataType: 'json'
      })
      .done(function(articles) {
        search_list.empty();
        if (articles.length !== 0) {
          articles.forEach(function(article){
            appendArticle(article);
          });
        }
        else {
          appendErrMsgToHTML("一致する記事がありません。");
        }
      })
      .fail(function() {
        alert('error');
      });
    });
  });
});