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
          `<div class='categoryWrapperEdit' id= 'children_wrapper_edit'>
            <div class='categoryWrapperEdit__box'>
              <select class='categoryWrapperEdit__box--select' id="child_category_edit" name="article[category_id]">
                <option value="---" data-category="---">---</option>
                ${insertHTML}
              </select>
            </div>
          </div>`;
      $('.newArticles__category--title').append(childSelectHtml);
    }
    // 親カテゴリー選択後のイベント
    $('#parent_category_edit').on('change', function(){
      var parentCategoryEdit = document.getElementById('parent_category_edit').value; //選択された親カテゴリーの名前を取得
      if (parentCategoryEdit != "---"){ //親カテゴリーが初期値でないことを確認
        $.ajax({
          url: 'get_category_children',
          type: 'GET',
          data: { parent_id: parentCategoryEdit },
          dataType: 'json'
        })
        .done(function(children){
          $('#child_category_edit').remove(); //親が変更された時、子以下を削除する
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
        $('#child_category_edit').remove(); //親カテゴリーが初期値になった時、子以下を削除する
      }
    });
  });
});