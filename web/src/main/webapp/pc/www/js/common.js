LT.namespace("LT.searchAction"), LT.searchAction = function () {
    var e = $("#formsearch");
    e.on("submit", function () {
        var n = $("input[" + sSelector + '="J_search"]').val();
        if (n && "" != $.trim(n)) {
            n = encodeURIComponent(n);
            var t = e.attr("action");
            t +=
                "?keyword=" + n + "&customertype=" + $('input[name="customertype"]')
                                .val(), location.href = t
        }
        return !1
    });
    var n = $("div[" + sSelector + '="J_schMenu"]'), t = n.find("li"), o = n.children("span");
    n.hover(function () {
        $(this).find("span").addClass("checked"), t.show()
    }, function () {
        $(this).find("span").removeClass("checked"), t.hide()
    }), t.bind("click", function () {
        var e = $(this).text(), n = o.text();
        $(this).hide(), o.text(e), $(this).text(n), o.removeClass("checked"), $(
            'input[name="customertype"]').val("商家设计" == o.text() ? 1 : 0)
    })
}, LT.namespace("LT.login_uri"), LT.login_uri = function (e) {
    window.location.href = e + "?returnUrl=" + encodeURI(location.href)
}, LT.namespace("LT.register_uri"), LT.register_uri = function (e) {
    window.location.href = e + "?returnUrl=" + encodeURI(location.href)
}, LT.namespace("LT.skip_to"), LT.skip_to = function () {
    window.ControllerSite || (window.ControllerSite = ""), $.ajax({
                                                                      type: "post",
                                                                      url: window.ControllerSite
                                                                           + "/SupplierCenter/GetSkipto",
                                                                      async: !1,
                                                                      data: {},
                                                                      dataType: "json",
                                                                      success: function (e) {
                                                                          window.location.href =
                                                                              e.success
                                                                                  ? "http://sj.biyao.com"
                                                                                  : "list.jsp#minisite/sjzx"
                                                                      },
                                                                      error: function () {
                                                                          window.location.href =
                                                                              "list.html#minisite/sjzx"
                                                                      }
                                                                  })
}, LT.namespace("LT.getUnReadCount"), LT.getUnReadCount = function () {
    var e = function () {
        function e(e) {
            e.domain || "";
            if (e.length > 0) {
                var n = !1, t = $("<div>", {"class": "messageTip"}), o = $("<span>", {
                    "class": "closeSpan inline",
                    "data-selector": "J_message_btn",
                    onclick: "$(this).parent().fadeOut()"
                });
                if (t.append(o), $.each(e, function (e, o) {
                        if (o.Count > 0) {
                            n = !0, $("<span>", {"class": "col_ee5b47 inline t_r", text: o.Count})
                                .css("width", 15).appendTo(t);
                            var i = window.ControllerSite + "/MyCenter/MyMessage.html?type="
                                    + o.TypeId;
                            t.append("条" + o.TypeName + '，<a href="' + i
                                     + '" class="uncol" target="_blank">请查看</a><br />')
                        }
                    }), !n) {
                    return;
                }
                $(".topUl").after(t), $(".J_msg_genius").addClass("hasMsg").mouseover(function () {
                    $(".messageTip").fadeIn("slow"), setTimeout(function () {
                        $(".messageTip").fadeOut("slow")
                    }, 2e4)
                })
            }
        }

        "" != window.loginUserId && $.ajax(-1 == window.location.href.indexOf("buy.biyao.com") ? {
            type: "post",
            url: "GetMessageNureadCount.php",
            async: !1,
            data: {},
            dataType: "json",
            success: function (n) {
                var t = n;
                e(t)
            }
        } : {
            type: "get",
            url: window.ControllerSite + "/MyMessage/GetJsonpUnReadMessage?webType=1&callback=?",
            async: !1,
            dataType: "jsonp",
            success: function (n) {
                var t = n;
                t.domain = $("#h_DZSite").val(), e(t)
            }
        })
    };
    setTimeout(e, 100)
}, $(function () {
    var e, n;
    n = {
        bindEvent: function () {
            $("li[" + sSelector + '="J_car"]').hover(function () {
                $(this).addClass("spLi").children("span").addClass("spchecked"), $(this)
                    .find(".TBDownIcon").addClass("TBDownIconCk"), $(this)
                    .children(".shopping_menu_out").show(), $(this).prev().addClass("jsli")
            }, function () {
                $(this).removeClass("spLi").children("span").removeClass("spchecked"), $(this)
                    .find(".TBDownIcon").removeClass("TBDownIconCk"), $(this)
                    .children(".shopping_menu_out").hide(), $(this).prev().removeClass("jsli")
            });
            var e = ($(".messageTip"), function (e) {
                e.children("a").removeClass("mouseon"), e.children(".nav_menu_out").hide()
            });
            $("li[" + sSelector + "=J_nav_checked]").hover(function () {
                $(this).children("a").addClass("mouseon"), $(this).children(".nav_menu_out")
                    .show(), clearTimeout(this.timer), e($(this).siblings())
            }, function () {
                var n = this;
                this.timer = setTimeout(function () {
                    e($(n))
                }, 300)
            })
        }, layout: function () {
            return
        }, contentHeight: function () {
            var e = function () {
                var e = $(window).innerHeight() - 33 - 60 - 25 - 205 - 44;
                $(".body_bg").css("min-height", e + "px")
            };
            e(), $(window).resize(function () {
                e()
            }), setTimeout(function () {
                $(".fixedPosTip").animate({right: "0px"}, 1e3)
            }, 800)
        }, handler: function () {
            LT.searchAction(), "" != window.loginUserId && LT.getUnReadCount()
        }
    }, e = function () {
        for (var e in n) {
            -1 == e.indexOf("_") && n[e]()
        }
    }()
}), function () {
    ("undefined" != typeof $.cookie("DZVISIT") && null != $.cookie("DZVISIT") && "" != $.cookie(
        "DZVISIT") || "undefined" != typeof $.cookie("uid") && null != $.cookie("uid") && ""
     != $.cookie("uid")) && $.ajax({
                                       dataType: "jsonp",
                                       type: "post",
                                       jsonp: "jsonpcallback",
                                       data: "",
                                       url: "list.html#RequestAPI/getCartNum",
                                       contentType: "application/x-www-form-urlencoded;charset=utf-8",
                                       success: function (e) {
                                           if (1 == e.success) {
                                               var n = e.data.num;
                                               $("#shopcarNumID").html("购物车 " + n || 0)
                                           }
                                       },
                                       error: function () {
                                       }
                                   })
}();