$(function(){
  $('.title-area').click(function(){
    $('.user-popup-wrapper').fadeIn();
  })
  $(document).on('.user-popup-wrapper','hover',function(){
    console.log('hoge');
  })
  $('.user-popup-wrapper').hover(
    function(){
    },
    function(){
      // マウスが外れた時の処理
      $('.user-popup-wrapper').fadeOut();
    }
  )
})