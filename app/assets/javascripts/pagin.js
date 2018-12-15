$(function() {
  setup = function(e, t) {
    e.preventDefault();
    paginId = t.parent().parent().parent().parent().attr('id')
    paginId = paginId.split("pagin")[1]
    return paginId
  }

  showPage = function(pagination, num) {
    nombrePage = $(".content"+num).length;
    if (pagination < 1 || pagination > nombrePage) return;

    $(".content"+num).hide().eq(pagination-1).show();
    $("#pagin"+num+" li").removeClass("active").eq(pagination).addClass("active");
  }

  $(".next").click(function(e) {
    paginId = setup(e, $(this))
    showPage($("#pagin"+paginId+" ul .active").index()+1, paginId);
  });

  $(".prev").click(function(e) {
    paginId = setup(e, $(this))
    showPage($("#pagin"+paginId+" ul .active").index()-1, paginId);
  });

  $(".num").click(function(e) {
    paginId = setup(e, $(this))
    showPage($(this).parent().index(), paginId);
  });

  showPage(1, "One")
  showPage(1, "Two")
  showPage(1, "Three")
})
