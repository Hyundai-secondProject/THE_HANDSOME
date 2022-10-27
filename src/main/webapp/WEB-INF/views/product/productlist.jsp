<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>


<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css" media="all" />
<link rel="stylesheet" type="text/css" href="/resources/css/product.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/products.css" media="all" />
	
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>

<div id="bodyWrap" class="products">
	<!-- 클롭 모나코 팝업 -->
	<div id="mainPopwrap1"></div>
	<!-- 클롭 모나코 팝업 -->
	<!--title-->
	<!-- #1141 - 카테고리 개편(카테고리/브랜드 Navigation) -->
	<h3 class="cnts_title ou1804">
		<span id = "cnts_title"> <!-- 정상 브랜드 카테고리 목록 --> 
<!-- 			<a href="/ko/c/WE/"
			onclick="GA_Event('카테고리_리스트','카테고리','여성')"> 여성</a> <img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
			alt="location arr"> <a href="/ko/c/WE05/"
			onclick="GA_Event('카테고리_리스트','카테고리','아우터')"> 아우터</a> <img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png"
			alt="location arr"> <a href="javascript:void(0);"
			onclick="GA_Event('카테고리_리스트','카테고리','재킷')"> 재킷</a> -->
			
		</span>
	</h3>
	<script type="text/javascript">
	const url = new URL(window.location.href);
	const urlParams = url.searchParams;	
	
	let CatTmp = "";
	let arr = new Array();
	arr = [urlParams.get("depth1"),urlParams.get("depth2"),urlParams.get("depth3")]
	
	// 배열 출력 (for 문)
	for(let i = 0; i < arr.length; i++) {
	  if (arr[i].equals("none")) {
		  return;
	  } else {
		  consol.log("실행");
		  CatTmp += "<a href='${pageContext.request.contextPath}/product/productlist?depth1=" + urlParams.get("depth1") + "&depth2=" + urlParams.get("depth2") + "&depth3=" + urlParams.get("depth3") + "'>" + arr[i] + "</a>";
	  		
	  }
	}
	$("#cnts_title").html(CatTmp);
	</script>

	<!--//title-->
	<div class="adaptive_wrap">

		<form id="categoryListForm" action="/ko/c/categoryList">
			<input type="hidden" id="brandCode" name="brandCode" value="">
			<input type="hidden" id="brandName" name="brandName" value="">
			<input type="hidden" id="subBrand" name="subBrand" value="">
			<input type="hidden" name="categoryCode" value="we051"> <input
				type="hidden" id="genderCategoryCode" name="genderCategoryCode"
				value=""> <input type="hidden" id="mainCateFlag"
				name="mainCateFlag" value=""> <input type="hidden"
				id="repProdColorCode" name="repProdColorCode" value=""> <input
				type="hidden" id="repSizeEnumCode" name="repSizeEnumCode" value="">
			<input type="hidden" id="priceOrderCode" name="priceOrderCode"
				value=""> <input type="hidden" id="productOrderCode"
				name="productOrderCode" value="NEW"> <input type="hidden"
				id="check4pmCode" name="check4pmCode" value=""> <input
				type="hidden" id="checkAtHomeCode" name="checkAtHomeCode" value="">
			<input type="hidden" id="checkSaleCode" name="checkSaleCode" value="">
			<input type="hidden" id="checkQuickCode" name="checkQuickCode"
				value=""> <input type="hidden" id="checkDeliveryCode"
				name="checkDeliveryCode" value="">
			<!-- 뒤로가기 버튼 클릭시 페이징 기억용 -->
			<input type="hidden" id="rememberPage" name="rememberPage" value="">
			<input type="hidden" id="FKD-001_015" value="컬러 더보기">
			<!-- 컬러 더보기 -->

			<!-- sort wrap -->
			<div class="filterWrap hsDelivery1902">
				<ul class="clearfix float_left">
					<!-- 정상용 브랜드 검색 -->
					<li class="brand"><a href="javascript:void(0);" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','브랜드');">브랜드
						<span class="current" id = "brandCurrent"></span> <!-- 브랜드 이름 들어가는 곳!!!! -->
						<span class="ico_arr">arrow</span></a>
						<div class="list" style="display: none;">
							<ul id="category_brand_chip">
								<li><input type="checkbox" id="brand_ck1" name='brand'
									onclick="GA_Event('카테고리_리스트','정렬','TIME');BcheckOnlyOne(this);"><label
									for="brand_ck1" id="BR01">TIME</label></li>
								<li><input type="checkbox" id="brand_ck2" name='brand'
									onclick="GA_Event('카테고리_리스트','정렬','MINE');BcheckOnlyOne(this);"><label
									for="brand_ck2" id="BR02">MINE</label></li>
								<li><input type="checkbox" id="brand_ck3" name='brand'
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN COLLECTION');BcheckOnlyOne(this);"><label
									for="brand_ck3" id="BR19">LANVIN COLLECTION</label></li>
								<li><input type="checkbox" id="brand_ck4"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN BLANC');BcheckOnlyOne(this);"><label
									for="brand_ck4" id="BR63">LANVIN BLANC</label></li>
								<li><input type="checkbox" id="brand_ck5"
									onclick="GA_Event('카테고리_리스트','정렬','SYSTEM');BcheckOnlyOne(this);"><label
									for="brand_ck5" id="BR03">SYSTEM</label></li>
								<li><input type="checkbox" id="brand_ck6"
									onclick="GA_Event('카테고리_리스트','정렬','SJSJ');BcheckOnlyOne(this);"><label
									for="brand_ck6" id="BR04">SJSJ</label></li>
								<li><input type="checkbox" id="brand_ck7"
									onclick="GA_Event('카테고리_리스트','정렬','TIME HOMME');BcheckOnlyOne(this);"><label
									for="brand_ck7" id="BR06">TIME HOMME</label></li>
								<li><input type="checkbox" id="brand_ck8"
									onclick="GA_Event('카테고리_리스트','정렬','SYSTEM HOMME');BcheckOnlyOne(this);"><label
									for="brand_ck8" id="BR07">SYSTEM HOMME</label></li>
								<li><input type="checkbox" id="brand_ck9"
									onclick="GA_Event('카테고리_리스트','정렬','the CASHMERE');BcheckOnlyOne(this);"><label
									for="brand_ck9" id="BR08">the CASHMERE</label></li>
								<li><input type="checkbox" id="brand_ck10"
									onclick="GA_Event('카테고리_리스트','정렬','LÄTT');BcheckOnlyOne(this);"><label
									for="brand_ck10" id="BR31">LÄTT</label></li>
								<li><input type="checkbox" id="brand_ck11"
									onclick="GA_Event('카테고리_리스트','정렬','OBZEE');BcheckOnlyOne(this);"><label
									for="brand_ck11" id="BR43">OBZEE</label></li>
								<li><input type="checkbox" id="brand_ck12"
									onclick="GA_Event('카테고리_리스트','정렬','O&amp;#039;2nd');BcheckOnlyOne(this);"><label
									for="brand_ck12" id="BR45">O'2nd</label></li>
								<li><input type="checkbox" id="brand_ck13"
									onclick="GA_Event('카테고리_리스트','정렬','CLUB MONACO');BcheckOnlyOne(this);"><label
									for="brand_ck13" id="BR44">CLUB MONACO</label></li>
								<li><input type="checkbox" id="brand_ck14"
									onclick="GA_Event('카테고리_리스트','정렬','oera');BcheckOnlyOne(this);"><label
									for="brand_ck14" id="BR61">oera</label></li>
								<li><input type="checkbox" id="brand_ck15"
									onclick="GA_Event('카테고리_리스트','정렬','OUR LEGACY');BcheckOnlyOne(this);"><label
									for="brand_ck15" id="BR64">OUR LEGACY</label></li>
								<li><input type="checkbox" id="brand_ck16"
									onclick="GA_Event('카테고리_리스트','정렬','BALLY');BcheckOnlyOne(this);"><label
									for="brand_ck16" id="BR21">BALLY</label></li>
								<li><input type="checkbox" id="brand_ck17"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN PARIS');BcheckOnlyOne(this);"><label
									for="brand_ck17" id="BR20">LANVIN PARIS</label></li>
								<li><input type="checkbox" id="brand_ck18"
									onclick="GA_Event('카테고리_리스트','정렬','3.1 Phillip Lim');BcheckOnlyOne(this);"><label
									for="brand_ck18" id="BR41">3.1 Phillip Lim</label></li>
								<li><input type="checkbox" id="brand_ck19"
									onclick="GA_Event('카테고리_리스트','정렬','ROCHAS');BcheckOnlyOne(this);"><label
									for="brand_ck19" id="BR37">ROCHAS</label></li>
								<li><input type="checkbox" id="brand_ck20"
									onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');BcheckOnlyOne(this);"><label
									for="brand_ck20" id="BR15">TOM GREYHOUND</label></li>
								<li><input type="checkbox" id="brand_ck21"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM THE STORE');BcheckOnlyOne(this);"><label
									for="brand_ck21" id="BR35">FOURM THE STORE</label></li>
								<li><input type="checkbox" id="brand_ck22"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM STUDIO');BcheckOnlyOne(this);"><label
									for="brand_ck22" id="BR30">FOURM STUDIO</label></li>
								<li><input type="checkbox" id="brand_ck23"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM MEN&amp;#039;S LOUNGE');BcheckOnlyOne(this);"><label
									for="brand_ck23" id="BR32">FOURM MEN'S LOUNGE</label></li>
								<li><input type="checkbox" id="brand_ck24"
									onclick="GA_Event('카테고리_리스트','정렬','MUE');BcheckOnlyOne(this);"><label
									for="brand_ck24" id="BR16">MUE</label></li>
								<li><input type="checkbox" id="brand_ck25"
									onclick="GA_Event('카테고리_리스트','정렬','H : SCENE');BcheckOnlyOne(this);"><label
									for="brand_ck25" id="BR47">H : SCENE</label></li>
								<li><input type="checkbox" id="brand_ck26"
									onclick="GA_Event('카테고리_리스트','정렬','Liquides Perfume Bar');BcheckOnlyOne(this);"><label
									for="brand_ck26" id="BR62">Liquides Perfume Bar</label></li>
							</ul>
						</div></li>
					<li class="color"><a href="#" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','색상');">색상
						<span class="current" id = "colorCurrent"></span> <!-- 색상 이름 들어가는 곳!!!! -->
						<span class="ico_arr">arrow</span></a>
						<div class="list list_item4" style="display: none;">
							<ul class="color_chip clearfix" id="category_color_chip">
								<li><a href="javascript:setRepProdColorCode('BEIGE')"
									style="background: #fae7c4;"
									onclick="CcheckOnlyOne(this)">BEIGE</a></li>
								<li><a href="javascript:setRepProdColorCode('BLACK')"
									style="background: #000000;"
									onclick="CcheckOnlyOne(this)">BLACK</a></li>
								<li><a href="javascript:setRepProdColorCode('BLUE')"
									style="background: #0f45bc;"
									onclick="CcheckOnlyOne(this)">BLUE</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('BROWN')"
									style="background: #673915;"
									onclick="CcheckOnlyOne(this)">BROWN</a></li>
								<li><a href="javascript:setRepProdColorCode('BURGUNDY')"
									style="background: #741313;"
									onclick="CcheckOnlyOne(this)">BURGUNDY</a></li>
								<li><a href="javascript:setRepProdColorCode('CAMEL')"
									style="background: #876c41;"
									onclick="CcheckOnlyOne(this);">CAMEL</a></li>
								<li><a href="javascript:setRepProdColorCode('GOLD')"
									style="background: #ffc733;"
									onclick="CcheckOnlyOne(this);">GOLD</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('GREEN')"
									style="background: #0f6f0e;"
									onclick="CcheckOnlyOne(this);">GREEN</a></li>
								<li><a href="javascript:setRepProdColorCode('GREY')"
									style="background: #444445;"
									onclick="CcheckOnlyOne(this);">GREY</a></li>
								<li><a href="javascript:setRepProdColorCode('IVORY')"
									style="background: #fff8d9;"
									onclick="CcheckOnlyOne(this);">IVORY</a></li>
								<li><a href="javascript:setRepProdColorCode('KHAKI')"
									style="background: #465626;"
									onclick="CcheckOnlyOne(this);">KHAKI</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('LAVENDER')"
									style="background: #9c81bb;"
									onclick="CcheckOnlyOne(this);">LAVENDER</a></li>
								<li><a href="javascript:setRepProdColorCode('METAL')"
									style="background: #9d9fa2;"
									onclick="CcheckOnlyOne(this);">METAL</a></li>
								<li><a href="javascript:setRepProdColorCode('MINT')"
									style="background: #95d0ab;"
									onclick="CcheckOnlyOne(this);">MINT</a></li>
								<li><a href="javascript:setRepProdColorCode('MULTI')"
									style="background: #534741;"
									onclick="CcheckOnlyOne(this);">MULTI</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('NAVY')"
									style="background: #061836;"
									onclick="CcheckOnlyOne(this);">NAVY</a></li>
								<li><a href="javascript:setRepProdColorCode('OLIVE')"
									style="background: #5d682d;"
									onclick="CcheckOnlyOne(this);">OLIVE</a></li>
								<li><a href="javascript:setRepProdColorCode('ORANGE')"
									style="background: #ee6423;"
									onclick="CcheckOnlyOne(this);">ORANGE</a></li>
								<li><a href="javascript:setRepProdColorCode('PINK')"
									style="background: #ea589b;"
									onclick="CcheckOnlyOne(this);">PINK</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('PURPLE')"
									style="background: #833b95;"
									onclick="CcheckOnlyOne(this);">PURPLE</a></li>
								<li><a href="javascript:setRepProdColorCode('RED')"
									style="background: #ec1e24;"
									onclick="CcheckOnlyOne(this);">RED</a></li>
								<li><a href="javascript:setRepProdColorCode('SILVER')"
									style="background: #c0c0c0;"
									onclick="CcheckOnlyOne(this);">SILVER</a></li>
								<li><a href="javascript:setRepProdColorCode('SKY')"
									style="background: #a2d6f3;"
									onclick="CcheckOnlyOne(this);">SKY</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('VIOLET')"
									style="background: #4c2b7b;"
									onclick="CcheckOnlyOne(this);">VIOLET</a></li>
								<li><a href="javascript:setRepProdColorCode('WHITE')"
									class="wt" style="background: #ffffff;"
									onclick="CcheckOnlyOne(this);">WHITE</a></li>
								<li><a href="javascript:setRepProdColorCode('YELLOW')"
									style="background: #ffea0a;"
									onclick="CcheckOnlyOne(this);">YELLOW</a></li>
							</ul>
						</div></li>	
						
						<li class="price"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','가격');">가격
						<span class="current" id="priceCurrent" title=" "></span>
						<span class="ico_arr">arrow</span></a>
                            <div class="list" style="display: none;">
                                <ul>
                                    <li><input name='price' type="checkbox" id="price_ck1" onclick="PcheckOnlyOne(this);"> <label for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
                                    <li><input name='price' type="checkbox" id="price_ck2" onclick="PcheckOnlyOne(this);"> <label for="price_ck2" id="lable_ck2">￦100,000 ~ ￦300,000</label></li>
                                    <li><input name='price' type="checkbox" id="price_ck3" onclick="PcheckOnlyOne(this);"> <label for="price_ck3" id="lable_ck3">￦300,000 ~ ￦500,000</label></li>
                                    <li><input name='price' type="checkbox" id="price_ck4" onclick="PcheckOnlyOne(this);"> <label for="price_ck4" id="lable_ck4">￦500,000 ~ ￦1,000,000</label></li>
                                    <li><input name='price' type="checkbox" id="price_ck5" onclick="PcheckOnlyOne(this);"> <label for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
                                </ul>
                            </div>
                        </li>				

					<li class="sortby"><a href="#" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순
						<span id = "sortCurrent" class="current">저가순</span>
						<span class="ico_arr">arrow</span>
						</a>
						<div class="list" style="display: none;">
							<ul>
								<li><a
									href="javascript:setProductOrderCode('HIGH', '고가순');"
									id ="hsort" onclick="ScheckOnlyOne(this);">고가순</a></li>
								<li><a href="javascript:setProductOrderCode('LOW', '저가순');"
									id ="hsort" onclick="ScheckOnlyOne(this);">저가순</a></li>
							</ul>
						</div></li>

					<li class="btn">
						<a id = "filter" href="javascript:gubunSearch(1);">적용</a>
					</li>
					<li class="btn">
						<a id = "reset" href="javascript:reset();"
						onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a>
					</li>
				</ul>
				<div class="items_count float_right">
					<!-- 상품 갯수 표기!!!!!!!!!!!!!!!!!!!!! -->
				</div>
			</div>
		</form>
		<!-- sort wrap -->
		<!-- items list -->
		<div class="items_list cate_item4" id="listContent"
			style="display: block;">
			<ul class="clearfix" id="listBody">
				<!-- ajax으로 상품 리스트 띄우는 곳 -->
			</ul>
		</div>
		<!-- //items list -->
		<!-- paging -->
		<div class="paging" style="display: block;">
			<!-- 페이징 처리 자바 스크립트로 실행!!!!!!!!!!-->
		</div>
		<!-- //paging -->

		<div class="sh_result none" id="searchResult_None"
			style="display: none;">조건에 맞는 상품 정보가 없습니다.</div>
	</div>

	<div id="criteoVariable">
		<script type="text/javascript">
			window.criteo_q = window.criteo_q || [];
			window.criteo_q.push({
				event : "setAccount",
				account : 24596
			}, {
				event : "setSiteType",
				type : "d"
			}, {
				event : "viewList",
				item : [ "MN2CBWJC081W", "MN2CAWJC064W", "MN2C8WJC026WP" ]
			});
		</script>
	</div>
</div>

<!-- 상품 리스트 ajax 처리 -->
<script type="text/javascript">
	$(window)
			.ready(
					function() {
						console.log("왜안떠");
						// 카테고리 띄우기
						const url = new URL(window.location.href);
						const urlParams = url.searchParams;	
						
						// 처음 실행 -> 빈 값으로 초기화
						let brand = $("#brandCurrent").html();
						let color = $("#colorCurrent").html();
						let price = $("#priceCurrent").html();
						let sort = $("#sortCurrent").html();
						
						if (sort == "고가순") {
							type = "H";
						} else {
							type = "L";
						}
						
						let startp = 0;
						let endp = 0;
						
						console.log("brand: " + brand);
						console.log("color: " + color);
						console.log("price: " + price);
						console.log("sort: " + sort);
						console.log(type);
						
						// 바로 상품 띄우기
						showList(1,type,brand,color,startp,endp,price);
	
							let CatTmp = "";
							let arr = new Array();
							arr = [urlParams.get("depth1"),urlParams.get("depth2"),urlParams.get("depth3")]
	
							// 배열 출력 (for 문)
 							for(let i = 0; i < arr.length; i++) {
							  if (arr[i] === "none") {
								  break;
							  } else {
								  if (i != 0) {
									  CatTmp += "<img src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png' alt='location arr'>";
								  }
								  CatTmp += "<a href='${pageContext.request.contextPath}/product/productlist?depth1=" + urlParams.get("depth1") + "&depth2=" + urlParams.get("depth2") + "&depth3=" + urlParams.get("depth3") + "'>" + arr[i] + "</a>";
							  }
							}

							console.log("CatTmp : " + CatTmp);
							$("#cnts_title").html(CatTmp);
						
						// ajax로 제품 띄우기
						function showList(page,type,brand,color,startp,endp,price) {

							$("#brandCurrent").html(brand);
							$("#colorCurrent").html(color);
							$("#priceCurrent").html(price);
							
							console.log("제품 띄우기 실행 " + price);
							console.log("제품 띄우기 실행" + startp);
							console.log("제품 띄우기 실행" + endp);

							let product_array;
							let totalCnt;
							
							
							const urlParams = new URL(location.href).searchParams;

							$
									.ajax(
											{
												url : "${pageContext.request.contextPath}/product/getProductList?depth1="
														+ urlParams.get("depth1")
														+ "&depth2=" + urlParams .get("depth2")
														+ "&depth3=" + urlParams .get("depth3")
/* 														+ "&type=" + type
														+ "&bkeyword=" + brand
														+ "&ckeyword=" + color */
														+ "&page=" + page,
												data : {
													"type" : type,
													"bkeyword" : brand,
													"ckeyword" : color,
													"startp" : startp,
													"endp" : endp,
													"price" : price
												}		
											})
									.done(
											function(data) {

												console.log("data :" + data);
												product_array = data.products;
												totalCnt = data.totalCnt;

												// 전체 갯수 표시
												let CntTmp = ""
												CntTmp += "<span class= 'num'>"
														+ totalCnt + "</span>";
												CntTmp += "<span>전체</span>";
												$(".items_count").html(CntTmp);

												// 제품 띄우기
												console.log(product_array);
												let html_tmp = "";

												if (product_array == null
														|| product_array.length == 0) {
													$("#listBody").html("");
													return;
												}

												for (let i = 0; i < product_array.length; i++) {
													let product = product_array
															.at(i);
													let product_color = product.colors;
													let product_info = product.product;
													let product_price = product.pprice;
													let checkLike = product.checkLike;
													console.log("checkLike : " + checkLike);
													
													let tmp = "";
													//console.log(product_info);
													console.log(product_color
															.at(0).pcimg1);
													console.log(product_color
															.at(0).pcimg2);
													console.log(product_color
															.at(0).pcimg3);
													console.log(product_color
															.at(0).pcchipimg);
													console
															.log(product_price
																	.toString()
																	.replace(
																			/\B(?=(\d{3})+(?!\d))/g,
																			','));
													console.log(totalCnt);
													console.log(product_info.pid);
													
													let mid = "${mid}";
													let pid = product_info.pid;

													console.log(mid);
													console.log(pid);

													if (i == 3 || i == 7
															|| i == 11) {
														tmp += "<li class = 'mr1m'>" // list 시작
													} else if (i == 4 || i == 8) {
														tmp += "<li class = 'clear: both'>"
													} else {
														tmp += "<li>"
													}
													tmp += "<div class = 'item_box'> "; // div1 시작

													tmp += "<a href='productdetail?pid="
															+ product_array
																	.at(i).product.pid + "&pcid=" + product_array.at(i).colors.at(0).pcid
															+ "' class='item_info1' onclick='setEcommerceData('1', 'CATEGORY')'> "; // 상세 페이지로 연결 + 제품 색상 넣기 필요!!!!!!!!!!!
													tmp += "<span class = 'item_img'>";
													tmp += "		<img src='"
															+ product_color
																	.at(0).pcimg2
															+ "' alt='' class='respon_image'/>";
													tmp += "		<img src='"
															+ product_color
																	.at(0).pcimg3
															+ "' alt='' class='respon_image on' style='display: none; opacity: 1;'/>";
													tmp += "</span>"
													tmp += "<span class = 'item_size' id = 'itemsize_1' style='display: none; height: 4.36886px; padding-top: 2.81557px; margin-top: 0px; padding-bottom: 2.81557px; margin-bottom: 0px;'>";
													tmp += "</span>";
													tmp += "</a>";
													tmp += "<a href='/ko/p/YN2CAWCT156W_BR?categoryCode=we05' class='item_info2' onclick='setEcommerceData('1', 'CATEGORY')'> ";
													tmp += "	<span class='brand'>"
															+ product_info.bname
															+ "</span>";
													tmp += "	<span class='title'>"
															+ product_info.pname
															+ "</span>";
													tmp += "	<span class='price'> ￦"
															+ product_price
																	.toString()
																	.replace(
																			/\B(?=(\d{3})+(?!\d))/g,
																			',')
															+ "원</span>";
													tmp += "	<span class='flag'> <span class='product'></span> </span>"
													tmp += "</a>";
													tmp += "<div class='color_more_wrap'>";
													for (let j = 0; j < product_color.length; j++) {
														tmp += "<a href='javascript:changeColor("
																+ i
																+ ", "
																+ j
																+ ")' ><img src='"
																+ product_color
																		.at(j).pcchipimg
																+ "'class = 'cl wt'/></a>";
													}
													tmp += "</div>";
													if (checkLike) {
														tmp += "<a onclick='insertLike(&#39;"+ pid+ "&#39;,&#39;" + mid + "&#39;)' class='add_wishlist on' id='wish_"+product_info.pid+"' data-value='YN2CAWCT156W_BR'>위시리스트 담기</a> "; 
													} else {
														tmp += "<a onclick='insertLike(&#39;"+ pid+ "&#39;,&#39;" + mid + "&#39;)' class='add_wishlist' id='wish_"+product_info.pid+"' data-value='YN2CAWCT156W_BR'>위시리스트 담기</a> "; 
			
													}											
													tmp += "	</div>"; // div1 종료
													tmp += "</li>"; // list 종료
													html_tmp += tmp;

												}
												$("#listBody").html(html_tmp);
												//$("#listBody").html(html_tmp);  
												console.log("------------------------");

												// 페이징 출력
												showProductPage(totalCnt);
											});

						}
						
				
						// 페이징 표시 자바스크립트
						var pageNum = 1;
						var pageNation = $(".paging");
						

						function showProductPage(totalCnt) {
							// 시작 페이지, 마지막 페이지, 이전페이지, 다음 페이지 구현
							var endNum = Math.ceil(pageNum / 10.0) * 10;
							var startNum = endNum - 9;
							var prev = startNum != 1;
							var next = false; // 기본 값은 false 
							// 현재 보이는 pagenation의 마지막 숫자의 *12은 현재 까지의 데이터 갯수인데
							// 이것보다 total 갯수가 더 적다면 -> 페이지 조정이 필요
							if (endNum * 12 >= totalCnt) { //마지막페이지계산
								endNum = Math.ceil(totalCnt / 12.0);
							} //end if	      
							if (endNum * 12 < totalCnt) { //다음페이지 가능
								next = true;
							} //end if	 

							console.log("t");
							console.log("PpageNum " + pageNum);
							console.log("PendNum " + endNum);
							console.log("PstartNum " + startNum);
							// 페이지 네이션 표시
							var str = "";
							str += "<a class='prev2' href='1'> 처음 페이지 </a>";
							if (pageNum <= 0) {
								str += "<a class='prev' href='1'> 이전 페이지 </a>";
							} else {
								str += "<a class='prev' href='" + (pageNum - 1)
										+ "'> 이전 페이지 </a>";
							}
							str += "<span class = 'num'>";
							for (var i = startNum; i <= endNum; i++) {
								// 현재 페이지 active
								var active = pageNum == i ? "on" : "";
								str += "<a href='" + i + "'class='pageBtn " + active + "'>"
										+ i + "</a>";
							}
							str += "</span>";
						
							str += "<a class='next' href='"+(parseInt(pageNum)+1)+"'> 다음 페이지 </a>";
							if(next) {								
								str += "<a class='next2' href='" + (endNum+1) + "'> 마지막 페이지 </a>";
							}
							
/* 							if (pageNum >= endNum) {
								str += "<a class='next' href='" + endNum + "'> 다음 페이지 </a>";
							} else {
								str += "<a class='next' href='" + (pageNum + 1)
										+ "'> 다음 페이지 </a>";
							}
							str += "<a class='next2' href='" + endNum + "'> 마지막 페이지 </a>"; */
							// console.log(str);

							pageNation.html(str);
						}

						//페이지 번호 클릭	
						//반드시 on함수 사용해야 한다. - js에 의해 새로 생긴 태그에는 이벤트가 주어지지 않기 때문에 찾아서 이벤트를 넣어줘야 한다.
						pageNation.on("click", "a", function(e) {
							// 링크 이동 행동 무시
							e.preventDefault(); //<a> 동작 중지
							console.log("page click");
							var targetPageNum = $(this).attr("href"); //페이지넘버 가져오기	       
							console.log("targetPageNum: " + targetPageNum);
							if (targetPageNum <= 0) {
								targetPageNum = 1;
							}
							console.log("targetPageNum: " + targetPageNum);
							// 전역 변수에 값 전달
							pageNum = targetPageNum; //값전달
							
							let type = "";
							let brand = $("#brandCurrent").html();
							let color = $("#colorCurrent").html();
							let price = $("#priceCurrent").html();
							let sort = $("#sortCurrent").html();
							let startp = 0;
							let endp = 0;
							
							if (price == ' ￦100,000 이하') {
								startp = 0;
								endp = 100000;
							} else if (price == '￦100,000 ~ ￦300,000') {
								startp = 100000;
								endp = 300000;
							} else if (price == '￦300,000 ~ ￦500,000') {
								startp = 300000;
								endp = 500000;
							} else if (price == '￦500,000 ~ ￦1,000,000') {
								startp = 500000;
								endp = 1000000;
							} else if (price == '￦1,000,000 이상'){
								startp = 1000000;
								endp = 100000000;
							} else {
								starp = 0;
								endp = 0;
							}
							
							if (brand == "" && color == "" && endp == "") {
								type = " ";
								console.log("null 실행");
							} else if (brand != "" && color == "" && endp == "") {
								type = "B";
								console.log("b 실행");
							} else if (brand == "" && color != "" && endp == "") {
								type = "C";
								console.log("c 실행");
							} else if (brand == "" && color == "" && endp != "") {
								type = "P";
								console.log("p 실행");
							} else if (brand != "" && color != "" && endp == "") {
								type = "BC";
								console.log("bc 실행");
							} else if (brand != "" && color == "" && endp != "") {
								type = "BP";
								console.log("bp 실행");
							} else if (brand == "" && color != "" && endp != "") {
								type = "CP";
								console.log("cp 실행");
							} else {
								type = "CBP";
								console.log("cbp 실행");
							}
							
							
							if (sort == '고가순') {
								type += "H";
							} else {
								type += "L";
							}
							
							showList(pageNum,type,brand,color,startp,endp); //페이지 리스트 다시 출력
						}); 
				        
				        let filterBtn = $("#filter");
				        
				        filterBtn.on("click", function (e) {
								let type = "";
								let brand = $("#brandCurrent").html();
								let color = $("#colorCurrent").html();
								let price = $("#priceCurrent").html();
								let sort = $("#sortCurrent").html(); // 정렬순
								let startp = 0;
								let endp = 0;
								
								console.log(price);
								
								if (price == ' ￦100,000 이하') {
									startp = 0;
									endp = 100000;
								} else if (price == '￦100,000 ~ ￦300,000') {
									startp = 100000;
									endp = 300000;
								} else if (price == '￦300,000 ~ ￦500,000') {
									startp = 300000;
									endp = 500000;
								} else if (price == '￦500,000 ~ ￦1,000,000') {
									startp = 500000;
									endp = 1000000;
								} else if (price == '￦1,000,000 이상'){
									startp = 1000000;
									endp = 100000000;
								} else {
									starp = 0;
									endp = 0;
								}
								
								if (brand == "" && color == "" && endp == 0) {
									type = " ";
									console.log("null 실행");
								} else if (brand != "" && color == "" && endp == 0) {
									type = "B";
									console.log("b 실행");
								} else if (brand == "" && color != "" && endp == 0) {
									type = "C";
									console.log("c 실행");
								} else if (brand == "" && color == "" && endp != 0) {
									type = "P";
									console.log("p 실행");
								} else if (brand != "" && color != "" && endp == 0) {
									type = "BC";
									console.log("bc 실행");
								} else if (brand != "" && color == "" && endp != 0) {
									type = "BP";
									console.log("bp 실행");
								} else if (brand == "" && color != "" && endp != 0) {
									type = "CP";
									console.log("cp 실행");
								} else {
									type = "CBP";
									console.log("cbp 실행");
								}
								
								
								if (sort == '고가순') {
									type += "H";
								} else {
									type += "L";
								}
								
								console.log(type);
								console.log(brand);
								console.log(color); 
				                showList(1,type,brand,color,startp,endp); 
				            });
				        
				        let resetBtn = $("#reset");
				        
				        resetBtn.on("click", function (e) {
							let type = "";
							let startp = 0;
							let endp = 0;
							
							$("#brandCurrent").html("");
							$("#colorCurrent").html("");
							$("#priceCurrent").html("");
							$("#sortCurrent").html("저가순");
							
							console.log("r실행 : " + type);
							console.log("r실행 : " + brand);
							console.log("r실행 : " + color); 
			                showList(1,type,brand,color,startp,endp); 
			            });
				   });

</script>
<script>
function insertLike(pid, mid) {
	
 	console.log(pid);
	console.log(mid); 
		
	$.ajax({
		url: "/product/insertLike",
		data: {
			"pid" : pid,
			"mid" : mid
		}
	}).done(function (data) {
		console.log("insert" + data.result);
		if (data.result === 1) {
			alert("위시리스트에 추가되었습니다.");
			let id = "wish_"+pid;
			console.log(id);
			console.log("+");
			let test = $('#'+ id).html();			
			console.log(test);
			$('#'+ id).addClass('on');
			//let count = parseInt($("#wishlistCount").html());
			//let countP = count + 1;
			console.log("위시 갯수: " + data.wishCnt);
			$("#wishlistCount").html(data.wishCnt);
			
		} else {
			deleteLike(pid, mid);
		}
	});	 			
}

function deleteLike(pid, mid) {
	
	console.log("삭제 수행");
 	console.log(pid);
	console.log(mid); 
		
	$.ajax({
		url: "/product/deleteLike",
		data: {
			"pid" : pid,
			"mid" : mid
		}
	}).done(function (data) {
		console.log("delete" +data.result);
		if (data.result === 1) {
			alert("위시리스트에서 삭제 되었습니다.");
			let id = "wish_"+pid;
			console.log(id);
			console.log("-");
			let test = $('#'+ id).html();			
			console.log(test);
			$('#'+ id).removeClass('on');
			//let count = parseInt($("#wishlistCount").html());
			//let countP = count - 1;
			console.log("위시 갯수: " + data.wishCnt);
			$("#wishlistCount").html(data.wishCnt);
		} else {
			alert("오류 발생.");
		}
	});	 			
}

function BcheckOnlyOne(element) {
	
	console.log("b체크 함수 실행");
	console.log($("#brandCurrent").html());
	console.log(element.nextSibling.innerHTML);
	
	const checkboxes = document.getElementsByName("brand");

	checkboxes.forEach((cb) => {
  		cb.checked = false;
	})
		element.checked = true;
		$("#brandCurrent").html(element.nextSibling.innerHTML);
}

function CcheckOnlyOne(element) {
	console.log("c체크 함수 실행");
	console.log($("#colorCurrent").html());
	console.log(element.innerHTML);
	$("#colorCurrent").html(element.innerHTML);
}

function PcheckOnlyOne(element) {
	console.log("p체크 함수 실행");
	console.log("p");
	console.log(element.nextElementSibling.innerHTML);
	
	const checkboxes = document.getElementsByName("price");
	
	checkboxes.forEach((cb) => {
  		cb.checked = false;
	})
		element.checked = true;
		$("#priceCurrent").html(element.nextElementSibling.innerHTML);	
}

function ScheckOnlyOne(element) {
	console.log("정렬 체크 함수 실행");
	console.log("o");
	console.log(element.innerHTML);
	
	$("#sortCurrent").html(element.innerHTML);	

}

</script>

<%-- <%@ include file="/WEB-INF/views/common/footer.jsp"%> --%>