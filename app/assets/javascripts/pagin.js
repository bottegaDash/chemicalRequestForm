$(function() {
  showPage = function(pagination, num) {
    nombrePage = $(".content"+num).length;
    if (pagination < 0 || pagination >= nombrePage) return;

    $(".content"+num).hide().eq(pagination).show();
    $("#pagin"+num+" li").removeClass("active").eq(pagination).addClass("active");
  }


  // Go to Right
  $(".next").click(function(e) {
    e.preventDefault();
    paginId = $(this).parent().parent().parent().attr('id')
    paginId = paginId.split("pagin")[1]
    showPage($("#pagin"+paginId+" ul .active").index() + 1, paginId);
  });

  // Go to Left
  $(".prev").click(function(e) {
    e.preventDefault();
    paginId = $(this).parent().parent().parent().attr('id')
    paginId = paginId.split("pagin")[1]
    showPage($("#pagin"+paginId+" ul .active").index() - 1, paginId);
  });

  $("article ul a").click(function(e) {
    e.preventDefault();
    paginId = $(this).parent().parent().parent().parent().attr('id')
    paginId = paginId.split("pagin")[1]
    showPage($(this).parent().index(), paginId);
  });


  showPage(0, "One")
  showPage(0, "Two")
  showPage(0, "Three")
})
