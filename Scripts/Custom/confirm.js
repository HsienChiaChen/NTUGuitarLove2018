//$(document).ready(function () {
        //    Congrats();
        //});
        function Congrats() {
            var RedirectTo;
            bootbox.dialog({
                message: $('#SubmitSuccess'),
                closeButton: false,
                //size: "large",
                buttons: {
                    redirect: {
                        label: "選歌查詢",
                        className: "btn-success",
                        callback: function () {
                            RedirectTo = "Query";
                        }
                    },
                    home: {
                        label: "確定",
                        className: "btn-primary",
                        callback: function () {
                            RedirectTo = "Home";
                        }
                    }
                },
                show: false
            })
                .on('shown.bs.modal', function () {
                    $('#SubmitSuccess').show();
                })
                .on('hide.bs.modal', function () {
                    if (RedirectTo == "Query") {
                        window.location = "/query";
                    }
                    else
                        window.location = "/";
                })
                .modal('show');
				
				return false;
        }
		
        function SubmitConfirm(tid , date , lesson) {
            var result = confirm('確定送出?');
            //if (!result) return false;
			if(!result) return false;
			//alert(tid + date + lesson);
			$.ajax({
				type: 'POST',
				url: "/Scripts/Custom/api-timeCheck.php",
				data: {TID: tid , DATE: date , Class: lesson},
				dataType: "json",
				async: false,
				timeout: 10000,
				success: function (response) {
					if(response[0]==1){
						$("#form1").ajaxSubmit(function(message) {  
							Congrats();
						});	
						//alert('success');  
						return false;
					}
            
					if(response[0]==0){
						alert('該時段已遭他人搶先...');
						window.location.href='/';
						event.preventDefault();
						return false;
					}
				},
				error: function (jqXHR, textStatus, errorThrown) {
					alert(jqXHR.responseText + '逾時，請重新輸入');
					alert(textStatus);
					alert(errorThrown);
					window.location='/';
					return false;
				}
			});
		}
			
			//if(result) Congrats();
			//else return false;
        //function SubmitConfirm() {
        //    alert('尚未開放！');
        //    return false;
        //}