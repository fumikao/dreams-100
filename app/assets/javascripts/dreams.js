$(function(){
  function buildHTML(dream){
    let html = `<table border="1">
                  <tbody>
                    <tr>
                    <td>
                      ${dream.status}
                    </td>
                    <td>
                      ${dream.content}
                    </td>
                    <td>
                      ${dream.opened}
                    </td>
                    <td>
                      <a href="/dreams/${dream.id}/edit">編集</a>        
                      <a rel="nofollow" data-method="delete" href="/dreams/${dream.id}">削除</a>
                    </td>
                    </tr>
                  </tbody>
                </table>`
    return html;
  }

  $('#new_dream').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: 'POST',
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.lists').append(html);
      $('#new_dream')[0].reset();
      // scrollMessages();
    })
    .fail(function(){
      alert('dreamを入力してください')
    })
    .always(function(){
      $('input[type=submit]').removeAttr('disabled');
    })
  });
});