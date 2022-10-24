<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>


<link rel="stylesheet" type="text/css"
	href="/resources/css/contents.css" media="all" />

<!-- <link rel="stylesheet" type="text/css" href="/resources/css/product.css"
	media="all" /> -->
<link rel="stylesheet" type="text/css" href="/resources/css/products.css"
	media="all" />
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
						onclick="GA_Event('카테고리_리스트','정렬','브랜드');">브랜드<span
							class="ico_arr">arrow</span></a>
						<div class="list" style="display: none;">
							<ul id="category_brand_chip">
								<li><input type="checkbox" id="brand_ck1"
									onclick="GA_Event('카테고리_리스트','정렬','TIME');setOnlineShopBrand(this, 'BR01');"><label
									for="brand_ck1" id="BR01">TIME</label></li>
								<li><input type="checkbox" id="brand_ck2"
									onclick="GA_Event('카테고리_리스트','정렬','MINE');setOnlineShopBrand(this, 'BR02');"><label
									for="brand_ck2" id="BR02">MINE</label></li>
								<li><input type="checkbox" id="brand_ck3"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN COLLECTION');setOnlineShopBrand(this, 'BR19');"><label
									for="brand_ck3" id="BR19">LANVIN COLLECTION</label></li>
								<li><input type="checkbox" id="brand_ck4"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN BLANC');setOnlineShopBrand(this, 'BR63');"><label
									for="brand_ck4" id="BR63">LANVIN BLANC</label></li>
								<li><input type="checkbox" id="brand_ck5"
									onclick="GA_Event('카테고리_리스트','정렬','SYSTEM');setOnlineShopBrand(this, 'BR03');"><label
									for="brand_ck5" id="BR03">SYSTEM</label></li>
								<li><input type="checkbox" id="brand_ck6"
									onclick="GA_Event('카테고리_리스트','정렬','SJSJ');setOnlineShopBrand(this, 'BR04');"><label
									for="brand_ck6" id="BR04">SJSJ</label></li>
								<li><input type="checkbox" id="brand_ck7"
									onclick="GA_Event('카테고리_리스트','정렬','TIME HOMME');setOnlineShopBrand(this, 'BR06');"><label
									for="brand_ck7" id="BR06">TIME HOMME</label></li>
								<li><input type="checkbox" id="brand_ck8"
									onclick="GA_Event('카테고리_리스트','정렬','SYSTEM HOMME');setOnlineShopBrand(this, 'BR07');"><label
									for="brand_ck8" id="BR07">SYSTEM HOMME</label></li>
								<li><input type="checkbox" id="brand_ck9"
									onclick="GA_Event('카테고리_리스트','정렬','the CASHMERE');setOnlineShopBrand(this, 'BR08');"><label
									for="brand_ck9" id="BR08">the CASHMERE</label></li>
								<li><input type="checkbox" id="brand_ck10"
									onclick="GA_Event('카테고리_리스트','정렬','LÄTT');setOnlineShopBrand(this, 'BR31');"><label
									for="brand_ck10" id="BR31">LÄTT</label></li>
								<li><input type="checkbox" id="brand_ck11"
									onclick="GA_Event('카테고리_리스트','정렬','OBZEE');setOnlineShopBrand(this, 'BR43');"><label
									for="brand_ck11" id="BR43">OBZEE</label></li>
								<li><input type="checkbox" id="brand_ck12"
									onclick="GA_Event('카테고리_리스트','정렬','O&amp;#039;2nd');setOnlineShopBrand(this, 'BR45');"><label
									for="brand_ck12" id="BR45">O'2nd</label></li>
								<li><input type="checkbox" id="brand_ck13"
									onclick="GA_Event('카테고리_리스트','정렬','CLUB MONACO');setOnlineShopBrand(this, 'BR44');"><label
									for="brand_ck13" id="BR44">CLUB MONACO</label></li>
								<li><input type="checkbox" id="brand_ck14"
									onclick="GA_Event('카테고리_리스트','정렬','oera');setOnlineShopBrand(this, 'BR61');"><label
									for="brand_ck14" id="BR61">oera</label></li>
								<li><input type="checkbox" id="brand_ck15"
									onclick="GA_Event('카테고리_리스트','정렬','OUR LEGACY');setOnlineShopBrand(this, 'BR64');"><label
									for="brand_ck15" id="BR64">OUR LEGACY</label></li>
								<li><input type="checkbox" id="brand_ck16"
									onclick="GA_Event('카테고리_리스트','정렬','BALLY');setOnlineShopBrand(this, 'BR21');"><label
									for="brand_ck16" id="BR21">BALLY</label></li>
								<li><input type="checkbox" id="brand_ck17"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN PARIS');setOnlineShopBrand(this, 'BR20');"><label
									for="brand_ck17" id="BR20">LANVIN PARIS</label></li>
								<li><input type="checkbox" id="brand_ck18"
									onclick="GA_Event('카테고리_리스트','정렬','3.1 Phillip Lim');setOnlineShopBrand(this, 'BR41');"><label
									for="brand_ck18" id="BR41">3.1 Phillip Lim</label></li>
								<li><input type="checkbox" id="brand_ck19"
									onclick="GA_Event('카테고리_리스트','정렬','ROCHAS');setOnlineShopBrand(this, 'BR37');"><label
									for="brand_ck19" id="BR37">ROCHAS</label></li>
								<li><input type="checkbox" id="brand_ck20"
									onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');setOnlineShopBrand(this, 'BR15');"><label
									for="brand_ck20" id="BR15">TOM GREYHOUND</label></li>
								<li><input type="checkbox" id="brand_ck21"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM THE STORE');setOnlineShopBrand(this, 'BR35');"><label
									for="brand_ck21" id="BR35">FOURM THE STORE</label></li>
								<li><input type="checkbox" id="brand_ck22"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM STUDIO');setOnlineShopBrand(this, 'BR30');"><label
									for="brand_ck22" id="BR30">FOURM STUDIO</label></li>
								<li><input type="checkbox" id="brand_ck23"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM MEN&amp;#039;S LOUNGE');setOnlineShopBrand(this, 'BR32');"><label
									for="brand_ck23" id="BR32">FOURM MEN'S LOUNGE</label></li>
								<li><input type="checkbox" id="brand_ck24"
									onclick="GA_Event('카테고리_리스트','정렬','MUE');setOnlineShopBrand(this, 'BR16');"><label
									for="brand_ck24" id="BR16">MUE</label></li>
								<li><input type="checkbox" id="brand_ck25"
									onclick="GA_Event('카테고리_리스트','정렬','H : SCENE');setOnlineShopBrand(this, 'BR47');"><label
									for="brand_ck25" id="BR47">H : SCENE</label></li>
								<li><input type="checkbox" id="brand_ck26"
									onclick="GA_Event('카테고리_리스트','정렬','Liquides Perfume Bar');setOnlineShopBrand(this, 'BR62');"><label
									for="brand_ck26" id="BR62">Liquides Perfume Bar</label></li>
							</ul>
						</div></li>
					<li class="color"><a href="#" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','색상');">색상<span
							class="ico_arr">arrow</span></a>
						<div class="list list_item4" style="display: none;">
							<ul class="color_chip clearfix" id="category_color_chip">
								<li><a href="javascript:setRepProdColorCode('BEIGE')"
									style="background: #fae7c4;"
									onclick="GA_Event('카테고리_리스트','정렬','BEIGE');">BEIGE</a></li>
								<li><a href="javascript:setRepProdColorCode('BLACK')"
									style="background: #000000;"
									onclick="GA_Event('카테고리_리스트','정렬','BLACK');">BLACK</a></li>
								<li><a href="javascript:setRepProdColorCode('BLUE')"
									style="background: #0f45bc;"
									onclick="GA_Event('카테고리_리스트','정렬','BLUE');">BLUE</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('BROWN')"
									style="background: #673915;"
									onclick="GA_Event('카테고리_리스트','정렬','BROWN');">BROWN</a></li>
								<li><a href="javascript:setRepProdColorCode('BURGUNDY')"
									style="background: #741313;"
									onclick="GA_Event('카테고리_리스트','정렬','BURGUNDY');">BURGUNDY</a></li>
								<li><a href="javascript:setRepProdColorCode('CAMEL')"
									style="background: #876c41;"
									onclick="GA_Event('카테고리_리스트','정렬','CAMEL');">CAMEL</a></li>
								<li><a href="javascript:setRepProdColorCode('GOLD')"
									style="background: #ffc733;"
									onclick="GA_Event('카테고리_리스트','정렬','GOLD');">GOLD</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('GREEN')"
									style="background: #0f6f0e;"
									onclick="GA_Event('카테고리_리스트','정렬','GREEN');">GREEN</a></li>
								<li><a href="javascript:setRepProdColorCode('GREY')"
									style="background: #444445;"
									onclick="GA_Event('카테고리_리스트','정렬','GREY');">GREY</a></li>
								<li><a href="javascript:setRepProdColorCode('IVORY')"
									style="background: #fff8d9;"
									onclick="GA_Event('카테고리_리스트','정렬','IVORY');">IVORY</a></li>
								<li><a href="javascript:setRepProdColorCode('KHAKI')"
									style="background: #465626;"
									onclick="GA_Event('카테고리_리스트','정렬','KHAKI');">KHAKI</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('LAVENDER')"
									style="background: #9c81bb;"
									onclick="GA_Event('카테고리_리스트','정렬','LAVENDER');">LAVENDER</a></li>
								<li><a href="javascript:setRepProdColorCode('METAL')"
									style="background: #9d9fa2;"
									onclick="GA_Event('카테고리_리스트','정렬','METAL');">METAL</a></li>
								<li><a href="javascript:setRepProdColorCode('MINT')"
									style="background: #95d0ab;"
									onclick="GA_Event('카테고리_리스트','정렬','MINT');">MINT</a></li>
								<li><a href="javascript:setRepProdColorCode('MULTI')"
									style="background: #534741;"
									onclick="GA_Event('카테고리_리스트','정렬','MULTI');">MULTI</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('NAVY')"
									style="background: #061836;"
									onclick="GA_Event('카테고리_리스트','정렬','NAVY');">NAVY</a></li>
								<li><a href="javascript:setRepProdColorCode('OLIVE')"
									style="background: #5d682d;"
									onclick="GA_Event('카테고리_리스트','정렬','OLIVE');">OLIVE</a></li>
								<li><a href="javascript:setRepProdColorCode('ORANGE')"
									style="background: #ee6423;"
									onclick="GA_Event('카테고리_리스트','정렬','ORANGE');">ORANGE</a></li>
								<li><a href="javascript:setRepProdColorCode('PINK')"
									style="background: #ea589b;"
									onclick="GA_Event('카테고리_리스트','정렬','PINK');">PINK</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('PURPLE')"
									style="background: #833b95;"
									onclick="GA_Event('카테고리_리스트','정렬','PURPLE');">PURPLE</a></li>
								<li><a href="javascript:setRepProdColorCode('RED')"
									style="background: #ec1e24;"
									onclick="GA_Event('카테고리_리스트','정렬','RED');">RED</a></li>
								<li><a href="javascript:setRepProdColorCode('SILVER')"
									style="background: #c0c0c0;"
									onclick="GA_Event('카테고리_리스트','정렬','SILVER');">SILVER</a></li>
								<li><a href="javascript:setRepProdColorCode('SKY')"
									style="background: #a2d6f3;"
									onclick="GA_Event('카테고리_리스트','정렬','SKY');">SKY</a></li>
								<li class="mr0"><a
									href="javascript:setRepProdColorCode('VIOLET')"
									style="background: #4c2b7b;"
									onclick="GA_Event('카테고리_리스트','정렬','VIOLET');">VIOLET</a></li>
								<li><a href="javascript:setRepProdColorCode('WHITE')"
									class="wt" style="background: #ffffff;"
									onclick="GA_Event('카테고리_리스트','정렬','WHITE');">WHITE</a></li>
								<li><a href="javascript:setRepProdColorCode('YELLOW')"
									style="background: #ffea0a;"
									onclick="GA_Event('카테고리_리스트','정렬','YELLOW');">YELLOW</a></li>
							</ul>
						</div></li>
					<li class="size"><a href="#" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','사이즈')">사이즈<span
							class="ico_arr">arrow</span></a>
						<div class="list list_item3" style="display: none;">
							<ul class="size_chip clearfix" id="category_size_chip">
								<li><a href="javascript:setRepSizeEnumCode('XXXS')"
									onclick="GA_Event('카테고리_리스트','정렬','XXXS');">XXXS</a></li>
								<li><a href="javascript:setRepSizeEnumCode('XXS')"
									onclick="GA_Event('카테고리_리스트','정렬','XXS');">XXS</a></li>
								<li class="mr0"><a
									href="javascript:setRepSizeEnumCode('XS')"
									onclick="GA_Event('카테고리_리스트','정렬','XS');">XS</a></li>
								<li><a href="javascript:setRepSizeEnumCode('S')"
									onclick="GA_Event('카테고리_리스트','정렬','S');">S</a></li>
								<li><a href="javascript:setRepSizeEnumCode('M')"
									onclick="GA_Event('카테고리_리스트','정렬','M');">M</a></li>
								<li class="mr0"><a
									href="javascript:setRepSizeEnumCode('L')"
									onclick="GA_Event('카테고리_리스트','정렬','L');">L</a></li>
								<li><a href="javascript:setRepSizeEnumCode('XL')"
									onclick="GA_Event('카테고리_리스트','정렬','XL');">XL</a></li>
								<li><a href="javascript:setRepSizeEnumCode('XXL')"
									onclick="GA_Event('카테고리_리스트','정렬','XXL');">XXL</a></li>
								<li class="mr0"><a
									href="javascript:setRepSizeEnumCode('XXXL')"
									onclick="GA_Event('카테고리_리스트','정렬','XXXL');">XXXL</a></li>
								<li><a href="javascript:setRepSizeEnumCode('XXXXL')"
									onclick="GA_Event('카테고리_리스트','정렬','XXXXL');">XXXXL</a></li>
								<li><a href="javascript:setRepSizeEnumCode('FREE')"
									onclick="GA_Event('카테고리_리스트','정렬','FREE');">FREE</a></li>
								<li class="mr0"><a
									href="javascript:setRepSizeEnumCode('ETC')"
									onclick="GA_Event('카테고리_리스트','정렬','ETC');">ETC</a></li>
							</ul>
						</div></li>
					<li class="price"><a href="#" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','가격');">가격<span
							class="ico_arr">arrow</span></a>
						<div class="list" style="display: none;">
							<ul>
								<li><input type="checkbox" id="price_ck1"
									onclick="GA_Event('카테고리_리스트','정렬','￦100,000 이하');setPriceOrderCode(this, '1')">
									<label for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
								<li><input type="checkbox" id="price_ck2"
									onclick="GA_Event('카테고리_리스트','정렬','￦100,000 ~ ￦300,000');setPriceOrderCode(this, '2')">
									<label for="price_ck2" id="lable_ck2">￦100,000 ~
										￦300,000</label></li>
								<li><input type="checkbox" id="price_ck3"
									onclick="GA_Event('카테고리_리스트','정렬','￦300,000 ~ ￦500,000');setPriceOrderCode(this, '3')">
									<label for="price_ck3" id="lable_ck3">￦300,000 ~
										￦500,000</label></li>
								<li><input type="checkbox" id="price_ck4"
									onclick="GA_Event('카테고리_리스트','정렬','￦500,000 ~ ￦1,000,000');setPriceOrderCode(this, '4')">
									<label for="price_ck4" id="lable_ck4">￦500,000 ~
										￦1,000,000</label></li>
								<li><input type="checkbox" id="price_ck5"
									onclick="GA_Event('카테고리_리스트','정렬','￦1,000,000 이상');setPriceOrderCode(this, '5')">
									<label for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
							</ul>
						</div></li>

					<li class="sortby"><a href="#" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순<span
							class="current">신상품</span><span class="ico_arr">arrow</span></a>
						<div class="list" style="display: none;">
							<ul>
								<li><a href="javascript:setProductOrderCode('NEW', '신상품');"
									onclick="GA_Event('카테고리_리스트','정렬','신상품');">신상품</a></li>
								<li><a
									href="javascript:setProductOrderCode('SALES', '판매순');"
									onclick="GA_Event('카테고리_리스트','정렬','판매순');">판매순</a></li>
								<li><a
									href="javascript:setProductOrderCode('HIGH', '고가순');"
									onclick="GA_Event('카테고리_리스트','정렬','고가순');">고가순</a></li>
								<li><a href="javascript:setProductOrderCode('LOW', '저가순');"
									onclick="GA_Event('카테고리_리스트','정렬','저가순');">저가순</a></li>
								<li><a
									href="javascript:setProductOrderCode('REVIEW', '평점순');"
									onclick="GA_Event('카테고리_리스트','정렬','상품평순');">평점순</a></li>
							</ul>
						</div></li>
					<li class="prd_list_filter1810 sale_filter">
						<div class="input_wrap">
							<input type="checkbox" id="checkSale" name="checkSale"
								onclick="setCheckSaleCode();GA_Event('카테고리_리스트','정렬','SALE');"
								style="margin: 3px 10px 0 0;"><label for="checkSale"
								id="checkSale" style="color: #ff0000;">SALE</label>
						</div>
					</li>
					<li class="prd_list_filter1810 delivery" style="">
						<!-- 딜리버리 190219 -->
						<div class="input_wrap">
							<input type="checkbox" id="checkDelivery" name="checkDelivery"
								onclick="sethsDeliveryCode();GA_Event('카테고리_리스트','정렬','한섬딜리버리');"><label
								for="checkDelivery" id="hsDelivery">한섬딜리버리</label>
						</div> <img
						src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/ico_quest.png"
						alt="한섬딜리버리란?" class="tlt" onmouseover="onMouseOverRecommend();"
						onmouseout="onMouseOutRecommend();">
						<div class="rmd_pb_popup" style="display: none;">
							<p>4PM, 퀵배송이 가능합니다.</p>
							<span class="box_arr"></span>
						</div>
					</li>
					<li class="btn"><a href="javascript:reset();"
						onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a><a
						href="javascript:gubunSearch(1);"
						onclick="GA_Event('카테고리_리스트','정렬','적용');">적용</a></li>
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
						// 카테고리 띄우기
						const url = new URL(window.location.href);
						const urlParams = url.searchParams;	
						
						// 바로 상품 띄우기
						showList(2);
	
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
						function showList(page) {

							let product_array;
							let totalCnt;
							const urlParams = new URL(location.href).searchParams;

							$
									.ajax(
											{
												url : "${pageContext.request.contextPath}/product/getProductList?depth1="
														+ urlParams
																.get("depth1")
														+ "&depth2="
														+ urlParams
																.get("depth2")
														+ "&depth3="
														+ urlParams
																.get("depth3")
											})
									.done(
											function(data) {

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

													if (i == 4 || i == 8
															|| i == 12) {
														tmp += "<li class = 'mr1m'>" // list 시작
													} else if (i == 5 || i == 9) {
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
						
					
						
						// 색상으로 변경되는거 수정해야 함------------------------------------
/* 						function changeColor(product_idx, color_idx) {
							product_array.at(product_idx)["state"] = color_idx;

							let color_img = product_array.at(product_idx).colors
									.at(color_idx);
							let p_color_id = "#product_img" + product_idx;
							let p_link = "#product_link" + product_idx;

							let tmp = "";
							tmp += "<img src='" + color_img["cimageproduct1"] + "' alt='' />";
							tmp += "<img src='" + color_img["cimageproduct2"] + "' alt='' />";

							$(p_link)
									.attr(
											"href",
											"productdetail?pcid="
													+ product_array
															.at(product_idx).product.pcode
													+ "&cproductcolor="
													+ product_array
															.at(product_idx).colors
															.at(product_array
																	.at(product_idx).state).cproductcolor);
							$(p_color_id).html(tmp);
						}
 */
						// 페이징 표시 자바스크립트
						var pageNum = 1;
						var pageNation = $(".paging")

						function showProductPage(totalCnt) {
							// 시작 페이지, 마지막 페이지, 이전페이지, 다음 페이지 구현
							var endNum = Math.ceil(pageNum / 10.0) * 10;
							var startNum = endNum - 9;
							//var prev = startNum != 1;
							//var next = false; // 기본 값은 false 
							// 현재 보이는 pagenation의 마지막 숫자의 *10은 현재 까지의 데이터 갯수인데
							// 이것보다 total 갯수가 더 적다면 -> 페이지 조정이 필요
							if (endNum * 10 >= totalCnt) { //마지막페이지계산
								endNum = Math.ceil(totalCnt / 10.0);
							} //end if	      
							if (endNum * 10 < totalCnt) { //다음페이지 가능
								next = true;
							} //end if	 

							console.log("pageNum" + pageNum);
							console.log("endNum" + endNum);
							console.log("startNum" + startNum);
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
							if (pageNum >= endNum) {
								str += "<a class='next' href='" + endNum + "'> 다음 페이지 </a>";
							} else {
								str += "<a class='next' href='" + (pageNum + 1)
										+ "'> 다음 페이지 </a>";
							}
							str += "<a class='next2' href='" + endNum + "'> 마지막 페이지 </a>";
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
							showList(pageNum); //페이지 리스트 다시 출력
						}); //end replyPageFooter click
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
</script>

<%-- <%@ include file="/WEB-INF/views/common/footer.jsp"%> --%>