/**
 * event.js
 * @author 김민규
 * @since 2022.10.24
 * @version 1.0
 * 
 * <pre>
 * 수정일        수정자               수정내용
 * ----------  --------    ---------------------------
 * 2022.10.24   김민규               최초 생성
 * </pre>
 */

$(document).ready(function(){

	
getprogress(); // 바로 실행

$("#progress").on("click", getprogress); // 진행중인 이벤트 누르면 실행 
$("#past").on("click", getpast); // 지난 이벤트 누르면 실행

function yyyymmdd(timestamp){ // DB에서 받아온 Timestamp 값을 YYYY-MM-DD 형식으로 바꿔주는 함수
	var date_not_formatted = new Date(timestamp);

	var formatted_string = date_not_formatted.getFullYear() + "-";

	if (date_not_formatted.getMonth() < 9) {
	  formatted_string += "0";
	}
	formatted_string += (date_not_formatted.getMonth() + 1);
	formatted_string += "-";

	if(date_not_formatted.getDate() < 10) {
	  formatted_string += "0";
	}
	formatted_string += date_not_formatted.getDate();
	return formatted_string;
}


function getprogress(){ // 진행중인 이벤트들을 보여주는 ajax
	var eventlist = "";

$.ajax({
	type: "GET",  
	url: "/event/Inprogress", 
	data: {}, 
	dataType : "json",  
	contentType: "application/json; charset=utf-8",
	success: function(data) { 
		//메인이벤트 (큰 이미지)
		eventlist+= ' <div class="event_box col1" style="" data-last="11">    ';
		eventlist+='<a href="/magazine/eventdetail?ENO=1"';
		eventlist+='onclick="">';
		eventlist+='<div class="pic">';
		eventlist+='<img src='+data[0].eimg+' >';
		eventlist+='</div>';
		eventlist+='<div class="evt_txt_box">';
		eventlist+='<p class="title">'+data[0].etitle+'</p>';
		eventlist+='<p class="date">'+yyyymmdd(data[0].eissuedate)+'~' + yyyymmdd(data[0].eexpiredate)+'</p>';
		eventlist+='</div>';
		eventlist+='</a> </div>';
		
		// 서브이벤트 (작은 이미지)
		$.each(data, function(index, item) { 
			if(index==0){
				return null;
			}
			console.log(index+"\n");
			console.log(item);
				eventlist+= '   <div class="event_box col2" style="" data-last="11">                                                  ';
				eventlist+= '                <a href="/magazine/eventdetail?ENO='+item.eno+'" onclick="">                         ';
				eventlist+= '            <div class="pic">                                                  ';
				eventlist+= '           <img                                                   ';
				eventlist+= '             src='+item.eimg+'>                       ';
				eventlist+= '            </div>                                                   ';
				eventlist+= '            	<div class="evt_txt_box">                         ';
				eventlist+= '    	<p class="title"> ' + item.etitle + '</p>';
				eventlist+= '        <p class="date">'+yyyymmdd(item.eissuedate) +  '~' + yyyymmdd(item.eexpiredate) + '</p>'    ;
				eventlist+= '   </div>                                                           ';
				eventlist+= '   </a>                                                           ';
				eventlist+= '  </div>                                                         ';
				
			$("#contentsInProgress").html(eventlist);//
			});
		
		}
	});
}


function getpast(){ // 지난 이벤트 보여주는 ajax
	var eventlist = "";

	$.ajax({
		type: "GET",  
		url: "/event/Past", 
		data: {}, 
		dataType : "json",  
		contentType: "application/json; charset=utf-8",
		success: function(data) { 
			console.log(JSON.stringify(data));	
			
			$.each(data, function(index, item) { 
				console.log(index+"\n");
				console.log(item);
					eventlist+= '   <div class="event_box col2" style="" data-last="11">                                                  ';
					eventlist+= '                <a href="/magazine/eventdetail?ENO='+item.eno+'" onclick="">                         ';
					eventlist+= '            <div class="pic">                                                  ';
					eventlist+= '           <img                                                   ';
					eventlist+= '             src='+item.eimg+'>                       ';
					eventlist+= '            </div>                                                   ';
					eventlist+= '            	<div class="evt_txt_box">                         ';
					eventlist+= '            <p class="title">'+ item.etitle+'</p>                                                  ';
					eventlist+= '        <p class="date">'+yyyymmdd(item.eissuedate) +  '~' + yyyymmdd(item.eexpiredate) + '</p>'    ;
					eventlist+= '   </div>                                                           ';
					eventlist+= '   </a>                                                           ';
					eventlist+= '  </div>                                                         ';
					
				$("#contentsInProgress").html(eventlist);//
				});
			
			}
		});
	}
});
