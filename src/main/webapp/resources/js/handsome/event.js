$(document).ready(function(){

	
getprogress();

$("#progress").on("click", getprogress);
$("#past").on("click", getpast);

function yyyymmdd(timestamp){
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


function getprogress(){
	var eventlist = "";

$.ajax({//클릭이벤트
	type: "GET",  
	url: "/event/Inprogress", 
	data: {}, 
	dataType : "json",  // data타입이 없으면 알아서 추측해서 응답받음 우리는 json으로?
	contentType: "application/json; charset=utf-8",
	success: function(data) { 
		//console.log(JSON.stringify(data));	// 콘솔에 잘뜨는지 확인
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
			
		/* 
		item.eno
		item.etitle
		item.eissuedate
		item.eexpiredate
		item.eimg
		*/
		$.each(data, function(index, item) { // 데이터 =item
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


function getpast(){
	var eventlist = "";

	$.ajax({//클릭이벤트
		type: "GET",  
		url: "/event/Past", 
		data: {}, 
		dataType : "json",  // data타입이 없으면 알아서 추측해서 응답받음 우리는 json으로?
		contentType: "application/json; charset=utf-8",
		success: function(data) { 
			console.log(JSON.stringify(data));	// 콘솔에 잘뜨는지 확인
			
			/* 
			item.eno
			item.etitle
			item.eissuedate
			item.eexpiredate
			item.eimg
			*/
			$.each(data, function(index, item) { // 데이터 =item
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
