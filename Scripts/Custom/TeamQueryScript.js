﻿var DateString = ["5/7(一)", "5/8(二)", "5/9(三)", "5/10(四)", "5/11(五)"];
var ClassString = ["二下課(10:00-10:20)", "三下課(11:10-11:20)", "四下課(12:10-12:20)", "五午休(13:10-13:20)", "六下課(14:10-14:20)", "七下課(15:10-15:30)", "八下課(16:20-16:30)", "九下課(17:20-17:30)"];
var CategoryName = ["友情", "愛情", "銃康", "師長", "另類"];
var ReserveString = ["4/30(一)", "5/1(二)", "5/2(三)", "5/3(四)", "5/4(五)"];
var GereralLessonString = ["否", "是", "不知道"];
var PayString = ["否", "是"];
$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
});

function OpenInfoModal(rid, tid) {
    /*toggle loading mask*/
    HoldOn.open({
        theme: "sk-circle",
        message: '<h2>讀取中...</h2>'
    });
    /*get data*/
    $.ajax({
        type: 'POST',
        url: "/api-teamorder",
        data: { RID: rid, TID: tid },
        dataType: "Json",
        timeout: 10000,
        success: function (response) {
            $('#date').text(DateString[response.Date - '1']);
            $('#class').text(ClassString[response.Class - '2']);
            $('#teammembarname').text(response.TeamMemberName);
            $('#songname').text(response.SongName);
            var CategoryText = '';
            for (var i = 0; i < response.Category.length; i++) {
                CategoryText += CategoryName[response.Category.charAt(i) - '1'] + " ";
            }
            $('#category').text(CategoryText);

            $('#place').text(response.Place);
            $('#classname').text(response.ClassName);
            $('#generallesson').text(GereralLessonString[response.GeneralLesson - '0']);

            $('#payday').text(ReserveString[response.PayDay - '1']);
            $('#specialrequest').text(response.SpecialRequest);
            $('#remark').html(response.Remark.replace(/\r\n/g, '<br />'));
            $('#ispaid').text(PayString[response.Ispaid - '0']);

            HoldOn.close();
            bootbox.dialog({
                title: '訂單編號： ' + rid,
                message: $('#QueryInformation'),
                buttons: {
                    success: {
                        label: "返回",
                        className: "btn-default"
                    }
                },
                show: false
            })
            .on('shown.bs.modal', function () {
                $('#QueryInformation').show();
            })
            .on('hide.bs.modal', function () {
                $('#QueryInformation').hide().appendTo('body');
            })
            .modal('show');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.responseText + '逾時，請重新輸入');
            window.location = '/teamquery';
        }
    });
}