var DateString = ["5/7(一)", "5/8(二)", "5/9(三)", "5/10(四)", "5/11(五)"];
var ClassString = ["二下課(10:00-10:20)", "三下課(11:10-11:20)", "四下課(12:10-12:20)", "五午休(13:10-13:20)", "六下課(14:10-14:20)", "七下課(15:10-15:30)", "八下課(16:20-16:30)", "九下課(17:20-17:30)"];

function songShow(TID , Team , Category , OriginalPlayer , SongName , SongID , Hide){
var CategoryName = ["友情", "愛情", "銃康", "師長", "另類"];
var CategoryStyle = ["primary", "danger", "warning", "success", "info"];

	Category_tag = ' ';
	for(var i = 0 ; i < Category.length ; i++){
		Category_tag = Category_tag +  '_c' + Category[i] + ' ';
		}

	var Category_str = (Category.map(x => CategoryName[x] + ' ')).toString();

	var div0 = $('<div></div>').addClass('col-lg-5 col-md-6 col-sm-8 col-ms-10 songlist found _all ' + Category_tag);
	if(Hide == 1){
		div0.css('display' , 'none');
	}
	var div1 = $('<div></div>').addClass('panel panel-default');
	var div2 = $('<div></div>').addClass('panel-heading clickable');
	var button0 = $('<button></button>').addClass('btn btn-primary btn-md pull-right order').on('click' , function(){return OpenTimeModel(SongName,Team, Category_str , SongID , TID)}).text('選歌');
	var i0 = $('<i></i>').addClass('glyphicon glyphicon-chevron-right');
	var h40 = $('<h4></h4>').addClass('pull-left');
	var i1 = $('<i></i>').addClass('glyphicon glyphicon-plus');
	var div3 = $('<div></div>').addClass('clearfix');
	var div4 = $('<div></div>').addClass('panel-body');
	var div5 = $('<div></div>').addClass('col-sm-5 col-ms-5 image-div');
	var a0 = $('<a></a>').attr('href' , 'team.php?TID=' + TID).attr('target' , '_blank');
	a0.append('<img alt="image" class="img-responsive" src="images/Players/' + TID +'-1.jpg" />');
	var div6 = $('<div></div>').addClass('col-sm-7 col-ms-7 content-div');
	var h50 =$('<h5></h5>').text('(' + OriginalPlayer + ')');
	var h30 =$('<h3></h3>').text('#' + SongID + ' ' + SongName);
	var h41 =$('<h4></h4>').text('No. ' + TID + ' ' + Team);
	var div7 = $('<div></div>').addClass('categorylabel');
	//Category.map(i =>
	//				var h42 = $('<h4></h4>').addClass('category')
	//				//var span0 = $('<span></span>').addClass('label label-' + CategoryStyle[i]).text(CategoryName[i]);
	//				//span0.appendTo(h42);
	//				//h42.appendTo(div7);
	//			)
	$.map(Category ,
		  function(categ , idx){
			  var h42 = $('<h4></h4>').addClass('category')
			  var span0 = $('<span></span>').addClass('label label-' + CategoryStyle[parseInt(categ)-1]).text(CategoryName[parseInt(categ)-1]);
			  span0.appendTo(h42);
			  h42.appendTo(div7);
		  }
	)
	var button1 = $('<button></button>').addClass('btn btn-primary btn-md timetable').on('click' , function(){return OpenTimeModel(SongName , Team , Category_str , SongID , TID)}).text('時間表');
	
	div1.appendTo(div0);
	div2.appendTo(div1);
	div4.appendTo(div1)
	button0.appendTo(div2);
	h40.appendTo(div2);
	div3.appendTo(div2);
	div5.appendTo(div4);
	div6.appendTo(div4);
	i0.appendTo(button0);
	i1.appendTo(h40);
	h40.append('#' + SongID + ' ' + SongName)
	a0.appendTo(div5);
	h50.appendTo(div6);
	h30.appendTo(div6);
	h41.appendTo(div6);
	div7.appendTo(div6);
	button1.appendTo(div6);
	
	div0.appendTo($('#songlists'));
	
	return true;
}

function songsShow(type , tdate , tclass){
    $.ajax({
        type: 'POST',
        url: "/Scripts/Custom/api-teamdata.php",
        data: {TID:0},
        dataType: "Json",
        timeout: 10000,
        success: function (response) {
			for(i = 0 ; i < response.length ; i++){
				var x = 0;
				for(j = 0 ; j < response[i].SongName.length ; j++){
					var hide = 1;
					
					if(tclass == '0' && tdate == '0'){
						if(type == 'all' || response[i].Category[j].indexOf(type[1]) != -1)
						{	hide = 0;
							x = 1;
						}
					}
					else if(tclass == '0' && tdate != '0'){
						if(response[i].TimeTableInv[parseInt(tdate)].indexOf('1') != -1)
							if(type == 'all' || response[i].Category[j].indexOf(type[1]) != -1)
							{hide = 0;
							 x = 2;
							}
					}
					else if(tclass != '0' && tdate == '0'){
						if(response[i].TimeTable[parseInt(tclass)-2].indexOf('1') != -1)
							if(type == 'all' || response[i].Category[j].indexOf(type[1]) != -1)
							{	hide = 0;
							x = 3;
							}
					}
					else if(tclass != '0' && tdate != '0'){
						if(response[i].TimeTable[parseInt(tclass)-2][parseInt(tdate)] == '1')
							if(type == 'all' || response[i].Category[j].indexOf(type[1]) != -1)
							{	hide = 0;
							x = 3;
							}
					}
					//alert(
					//	'id	 		: ' + response[i].TID + ' ' + response[i].SongID[j] + '\n' +
					//	'tcdate		: ' + (parseInt(tdate)-1).toString() + '\n' +
					//	'tclass 	: ' + (parseInt(tclass)-2).toString() + '\n' +
					//	'date 		: ' + response[i].TimeTableInv[parseInt(tdate)] + '\n' +
					//	'class 		: ' + response[i].TimeTable[parseInt(tclass)-2] + '\n' +
					//	'condit 	: ' + x + '\n' +
					//	'hide	 	: ' + hide + '\n'						
					//)
					songShow(response[i].TID , response[i].Team , response[i].Category[j] , response[i].OriginalPlayer[j] , response[i].SongName[j] , response[i].SongID[j] , hide);
				}
			}

			var element = $('.category-filter .btn-filter .' + type);
			element.addClass("active").siblings().removeClass("active");
			
			var categoryLabel = $('.timebar span.category');
			categoryLabel.removeClass();
	        
			if (type == 'all') {
				categoryLabel.addClass('label category label-default');
				categoryLabel.text('全部');
			}
			else if (type == 'c1') {
				categoryLabel.addClass('label category label-primary');
				categoryLabel.text('友情');
			}
			else if (type == 'c2') {
				categoryLabel.addClass('label category label-danger');
				categoryLabel.text('愛情');
			}
			else if (type == 'c3') {
				categoryLabel.addClass('label category label-warning');
				categoryLabel.text('銃康');
			}
			else if (type == 'c4') {
				categoryLabel.addClass('label category label-success');
				categoryLabel.text('師長');
			}
			else if (type == 'c5') {
				categoryLabel.addClass('label category label-info');
				categoryLabel.text('另類');
			}
        },
        error: function () {
            alert('逾時，請再試一次');
            HoldOn.close();
        }
    });
}

$(document).ready(function () {
    /*judge whether mobile device or not*/
    if ($(window).width() >= 768) {
        $('.songlist div.clickable').addClass('panel-drop');
        $('.songlist div.clickable').find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
    else {
        $('.found .panel-body').hide();
    }

    /*toggle all*/
    $('.toggle .btn-toggle').on('click', function () {
        var $target = $(this).data('target');
        var $panel = $('.songlist div.clickable');
        if ($target == 'on') {
            $panel.parents('.panel').find('.panel-body').slideDown();
            $panel.addClass('panel-drop');
            $panel.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
        }
        else {
            $panel.parents('.panel').find('.panel-body').slideUp();
            $panel.removeClass('panel-drop');
            $panel.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
        }
    });

    /*category filter*/
    $('.category-filter .btn-filter').on('click', function () {
        //$(this).addClass("active").siblings().removeClass("active");

        var $target = $(this).data('target');
        if ($target != '_all') {
            $('.songlist').css('display', 'none');
            if ($('.songlist.' + $target).length) {
                $('.songlist.' + $target).fadeIn('slow');
                $('.notfound').css('display', 'none');
            }
            else {
                $('.notfound').fadeIn('slow');
            }
        }
        else if ($target == '_all') {
            $('.songlist').css('display', 'none');
            if ($('.songlist').length > 1) {
                $('.songlist').fadeIn('slow');
                $('.notfound').css('display', 'none');
            }
            else {
                $('.notfound').fadeIn('slow');
            }
        }
        
        var categoryLabel = $('.timebar span.category');
        categoryLabel.removeClass();
        
        if ($target == '_all') {
            categoryLabel.addClass('label category label-default');
            categoryLabel.text('全部');
        }
        else if ($target == '_c1') {
            categoryLabel.addClass('label category label-primary');
            categoryLabel.text('友情');
        }
        else if ($target == '_c2') {
            categoryLabel.addClass('label category label-danger');
            categoryLabel.text('愛情');
        }
        else if ($target == '_c3') {
            categoryLabel.addClass('label category label-warning');
            categoryLabel.text('銃康');
        }
        else if ($target == '_c4') {
            categoryLabel.addClass('label category label-success');
            categoryLabel.text('師長');
        }
        else if ($target == '_c5') {
            categoryLabel.addClass('label category label-info');
            categoryLabel.text('另類');
        }
    });

    /*  Panel*/
    $('.songlist div.clickable').on('click', function (e) {
        var $this = $(this);
        if (e.target.nodeName == 'BUTTON') {
            return;
        }
        else if (!$this.hasClass('panel-drop')) {
            $this.parents('.panel').find('.panel-body').slideDown();
            $this.addClass('panel-drop');
            $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
        } else {
            $this.parents('.panel').find('.panel-body').slideUp();
            $this.removeClass('panel-drop');
            $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
        }
    });
	
	//songsShow();
	
	//alert('load-su');
});

/*confirmation*/
function submitConfirm(SongText, TeamText, DateText, ClassText, CategoryText, Song, Team, Date, Class) {
    var r = confirm("確定選歌?\n歌名：" + SongText + "\n歌手：" + TeamText + "\n日期：" + DateText + "\n時間：" + ClassText + "\n類型：" + CategoryText);
    if (r == true) {
        do_Post({ 'Date': DateText, 'Class': ClassText, 'Team': TeamText, 'Song': SongText , 'Category' : CategoryText , 'tid' : Team , 'date' : Date , 'lesson' : Class});
    }
    return false;
}

function do_Post(params) {
    var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "/formfill.php");  //modify

    for (var key in params) {
        if (params.hasOwnProperty(key)) {
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", key);
            hiddenField.setAttribute("value", params[key]);
            form.appendChild(hiddenField);
        }
    }
    document.body.appendChild(form);
    form.submit();
}

function OpenTimeModel(SongText, TeamText, CategoryText, Song, Team) {
    /*toggle loading mask*/
    HoldOn.open({
        theme: "sk-cube-grid",
        message: '<h2>讀取中...</h2>'
    });
    /*get data*/
    $.ajax({
        type: 'POST',
        url: "/Scripts/Custom/api-teamdata.php",
        data: { TID: Team },
        dataType: "Json",
        timeout: 10000,
        success: function (response) {
			//alert(SongText + ' ' + TeamText + ' ' + CategoryText + ' ' + Song + ' ' + Team);
            //var response = $.parseJSON(data);
            $('#TimeTable tbody').empty();
            $.each(response.TimeTable, function (i, Class) {
                var row = $('<tr></tr>').appendTo($('#TimeTable').find('tbody:last'));
                $.each(Class, function (j, Day) {
            
                    var grid = response.TimeTable[i][j];
                    if (j == 0) {
                        grid = '<a data-toggle="tooltip" data-placement="top" title="' + ClassString[i] + '">' + response.TimeTable[i][j] + '</a>';
                        row.append($('<td></td>').html(grid));
                    }
                    else if (grid == '1') {
                        //grid = '<button class="btn yo" onclick="return submitConfirm(' + SongText + ', ' + TeamText + ', ' + DateText + ', ' + ClassText + ', ' + CategoryText + ', ' + Song + ', ' + Team + ', ' + j + ', ' + (i + 2) + ');">V</button>'
                        grid = '<button class="btn btn-success btn-sm" onclick="submitConfirm(\'' + SongText + '\',\'' + TeamText + '\',\'' + DateString[j - 1] + '\',\'' + ClassString[i] + '\',\'' + CategoryText + '\',\'' + Song + '\',\'' + Team + '\',\'' + j + '\',\'' + (i + 2) + '\');"><i class="fa fa-check"></i></button>'
                        row.append($('<td></td>').html(grid));
                    }
                    else if (grid == '2') {
                        grid = '<span class="label label-danger"><i class="fa fa-clock-o"></i></span>';
                        row.append($('<td></td>').html(grid));
                    }
                    else if (grid == 'X') {
                        grid = '<span class="label label-warning"><i class="fa fa-times"></i></span>';
                        row.append($('<td></td>').html(grid));
                    }
                    else if (grid == '0')
                        row.append($('<td></td>').text(''));
            
                });
            });
            $('[data-toggle="tooltip"]').tooltip();
            
            HoldOn.close();
            
            bootbox.dialog({
                title: '<h3>' + SongText + '</h3> <p>' + TeamText + '</p>',
                message: $('#TimeTableModel'),
                buttons: {
                    success: {
                        label: "返回",
                        className: "btn-default"
                    }
                },
                show: false
            })
            .on('shown.bs.modal', function () {
                $('#TimeTableModel').show();
            })
            .on('hide.bs.modal', function () {
                $('#TimeTableModel').hide().appendTo('body');
            })
            .modal('show');
        },
        error: function() {
            alert('逾時，請重新輸入');
            HoldOn.close();
            window.location = '/songlist.php';
        }
		
		//error: function(xhr, ajaxOptions, thrownError) {
		//	alert(xhr.responseText);
		//	HoldOn.close();
		//	window.location = '/songlist.php';
		//}
    });

    return false;
}

/*Rearrange Window toggle panel*/

$(window).resize(function () {
    var $panel = $('#container div.clickable');
    if ($(this).width() >= 768) {
        $panel.parents('.panel').find('.panel-body').slideDown();
        $panel.removeClass('panel-collapsed');
        $panel.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
    else {
        $panel.parents('.panel').find('.panel-body').slideUp();
        $panel.addClass('panel-collapsed');
        $panel.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
    }
});

/*ajax rebinding*/
function rebinding() {
    Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
}

function BeginRequestHandler(sender, args) {
    HoldOn.open({
        theme: "sk-rect",
        message: '<h2>讀取中...</h2>'
    });
}
function EndRequestHandler(sender, args) {
    HoldOn.close();
    ReadyFunction();
}

function ReadyFunction() {
    /*judge whether mobile device or not*/
    if ($(window).width() >= 768) {
        $('.songlist div.clickable').addClass('panel-drop');
        $('.songlist div.clickable').find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
    else {
        $('.found .panel-body').hide();
    }

    /*Toggle Panel*/
    $('.songlist div.clickable').on('click', function (e) {
        var $this = $(this);
        if (e.target.nodeName == 'BUTTON') {
            return;
        }
        else if (!$this.hasClass('panel-drop')) {
            $this.parents('.panel').find('.panel-body').slideDown();
            $this.addClass('panel-drop');
            $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
        } else {
            $this.parents('.panel').find('.panel-body').slideUp();
            $this.removeClass('panel-drop');
            $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
        }
    });

    //setPanelButton('all');
}

function setPanelButton(type) {
    var element = $('.category-filter .btn-filter.' + type);
    element.addClass("active").siblings().removeClass("active");

    var $target = element.data('target');
    if ($target != '_all') {
        $('.songlist').css('display', 'none');
        if ($('.songlist.' + $target).length) {
            $('.songlist.' + $target).fadeIn('slow');
            $('.notfound').css('display', 'none');
        }
        else {
            //$('.notfound').fadeIn('slow');
        }
    }
    else if ($target == '_all') {
        $('.songlist').css('display', 'none');
        if ($('.songlist').length > 1) {
            $('.songlist').fadeIn('slow');
            $('.notfound').css('display', 'none');
        }
        else {
            //$('.notfound').fadeIn('slow');
        }
    }

    var categoryLabel = $('.timebar span.category');
    categoryLabel.removeClass();

    if ($target == '_all') {
        categoryLabel.addClass('label category label-default');
        categoryLabel.text('全部');
    }
    else if ($target == '_c1') {
        categoryLabel.addClass('label category label-primary');
        categoryLabel.text('友情');
    }
    else if ($target == '_c2') {
        categoryLabel.addClass('label category label-danger');
        categoryLabel.text('愛情');
    }
    else if ($target == '_c3') {
        categoryLabel.addClass('label category label-warning');
        categoryLabel.text('銃康');
    }
    else if ($target == '_c4') {
        categoryLabel.addClass('label category label-success');
        categoryLabel.text('師長');
    }
    else if ($target == '_c5') {
        categoryLabel.addClass('label category label-info');
        categoryLabel.text('另類');
    }
	
	//alert('songlist.length : '+$('.songlist').length+' c.length : '+$('.songlist.' + $target).length);
}