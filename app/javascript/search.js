$(function() {
  let search_list = $(".Article");

  function appendArticle(article){
    let html = `
        <div @articles.each do |article| >
          <a href= image_tag(article.image.url, class: "main-image"), article_path(article.id), method: :get>
          </a>
        </div>`
    search_list.append(html);
  }
  function appendErrMsgToHTML(msg) {
    let html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }

  $(".topTitle__search__form").on("keyup",function() {
    let input = $(".topTitle__search__form").val();
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
  });
});