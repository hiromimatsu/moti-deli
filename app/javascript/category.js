document.addEventListener("turbolinks:load"
, function () {

  $(function(){
    // カテゴリーセレクトボックスのオプションを作成
    function appendOption(category){
      var html = `<option value="${category.id}" data-category="${category.id}">${category.name}</option>`;
      return html;
    }
    // 子カテゴリーの表示作成
    function appendChildrenBox(insertHTML){
      var childSelectHtml = '';
      childSelectHtml = 
          `<div class='categoryWrapper' id= 'children_wrapper'>
            <div class='categoryWrapper__box'>
              <select class='categoryWrapper__box--select' id="child_category" name="article[category_id]">
                <option value="---" data-category="---">---</option>
                ${insertHTML}
              </select>
            </div>
          </div>`;
      $('.newArticles__category--title').append(childSelectHtml);
    }
    // 親カテゴリー選択後のイベント
    $('#parent_category').on('change', function(){
      var parentCategory = document.getElementById('parent_category').value;
      if (parentCategory != "---"){
        $.ajax({
          url: 'get_category_children',
          type: 'GET',
          data: { parent_id: parentCategory },
          dataType: 'json'
        })
        .done(function(children){
          $('#child_category').remove();
          var insertHTML = '';
          children.forEach(function(child){
            insertHTML += appendOption(child);
          });
          appendChildrenBox(insertHTML);
        })
        .fail(function(){
          alert('カテゴリー取得に失敗しました');
        })
      }else{
        $('#child_category').remove(); //親カテゴリーが初期値になった時、子以下を削除する
      }
    });
  });
});