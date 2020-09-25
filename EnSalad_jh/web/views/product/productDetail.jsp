<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ensalad.product.model.vo.Product" %>

<%@include file="/views/common/header.jsp"%>

<%Product p = (Product)request.getAttribute("selectProduct");//서블렛에 있는 키값으로 불러와야함. %>

<section class="thisproduct" onload="init();">
    <!-- 상품 썸네일 이미지/ 상품 정보 부모창-->
    <div class="infromation-parent">
        <!-- 상품 썸네일 이미지/ 상품정보 자식창  -->
        <div class="information">
            <!-- 상품 썸네일 이미지 -->
            <div class="img">
                <img src="" alt="">
            </div>
            <!-- 상품 정보 -->
            <div class="productinformation">
                <div>
                    <h2><%=p.getProductName() %></h2>
                    
                    <p><%=p.getProductContent() %></p>
                    <p><%=p.getProductPrice() %></p>
                </div>
                <div class="su-form" >
                    <form class="count" name="form" method="get">
                        수량 : <input type="text" name="sell_price" value="<%=p.getProductPrice()%>">
                        <input type="text" name="amount" value="1" size="3" onchange="change();">
                        <input type="button" value=" + " onclick="add();">
                        <input type="button" value=" - " onclick="del();"><br>
                        금액 : <input type="text" name="sum" size="11" readonly>원
                    </form>
                </div>
                <hr>
                <div class="btn">
                   <button onclick="location.assign('<%=request.getContextPath() %>')">장바구니 담기</button>
                   <button onclick="location.assign('<%=request.getContextPath() %>')">주문하기</button>
                </div>
            </div>
           
        </div>
    </div>
    <hr>
    <!-- 관련상품 -->
    <div class="Relatedproducts">
        <input type="radio" name="pos" id="pos1" checked>
        <input type="radio" name="pos" id="pos2">
	    <input type="radio" name="pos" id="pos3">
	    <input type="radio" name="pos" id="pos4">
        <ul class="Relatedimg">
            <li>관련상품 1-1</li>
            <li>관련상품 1-2</li>
            <li>관련상품 1-3</li>
            <li>관련상품 1-4</li>
        </ul>
        <p class="bullet">
	      <label for="pos1">1</label>
	      <label for="pos2">2</label>
	      <label for="pos3">3</label>
	      <label for="pos4">4</label>
	    </p>
    </div>
    <hr>
    <!-- 상품 상세 이미지 -->
    <div class="detail-product-img">
        <p>여긴 이미지가 들어갈 내용</p>
    </div>

</section>

<style>
    /* 세션 */
    .thisproduct{
        /* 헤더와 풋터 간격 */
        margin : 50px 50px;
    }

    /* 상품 썸네일 / 정보 부모창 */
    .infromation-parent{
        display:table;
        margin: auto;
    }
    /* 상품 썸네일 이미지/ 상품정보 자식창 */
    .information {
        display: flex;
        margin-bottom: 20px;
    }
    /* 썸네일 이미지 */
    .img {
        width: 400px;
        height: 400px;
        border: 1px red solid;
    }
    /* 상품 정보 창 */
    .productinformation {
        width: 400px;
        height: 400px;
        border: 1px blue solid;
    }
    /* 주문하기 / 장바구니 버튼 */
    .btn{
        display: flex;
    }
    /* 장바구니 */
    .jangbtn{
        border:3px green solid;
        background-color: white;
        width: 200px;
        height: 50px;
        margin-left: 20px;
    }
    /* 주문하기 */
    .orderbtn{
        border:3px green solid;
        background-color: green;
        width: 200px;
        height: 50px;
        margin-left: 20px;
    }
    /* 관련상품 */
    .Relatedproducts{/* ul을 담고있는 div */
        height: 200px;
        overflow:hidden;
        position:relative;
        width: auto;
        border: 1px rebeccapurple solid;
        margin: 20px 20px;
    }
    /* 관련 상품 분류 */
    .Relatedimg{ /* ul */
        list-style-type: none;
        width: calc(100%*4);
        animation:slide 8s infinite;
        display: flex;
        transition:1s;
    }
	
    .Relatedproducts>.Relatedimg>li{
        width:calc(100% / 4);
        height:100px;
    }
    .Relatedproducts>input{
    	display:none;
    }
    
    .slide .bullet{position:absolute;bottom:20px;left:0;right:0;text-align:center;z-index:10;}
    .slide .bullet label{width:10px;height:10px;border-radius:10px;border:2px solid #666;display:inline-block;background:#fff;font-size:0;transition:0.5s;cursor:pointer;}

    /* 슬라이드 조작 */
    #pos1:checked ~ .Relatedimg{margin-left:0;}
    #pos2:checked ~ .Relatedimg{margin-left:-100%;}
    #pos3:checked ~ .Relatedimg{margin-left:-200%;}
    #pos4:checked ~ .Relatedimg{margin-left:-300%;}

    /* bullet 조작 */
    #pos1:checked ~ .bullet label:nth-child(1),
    #pos2:checked ~ .bullet label:nth-child(2),
    #pos3:checked ~ .bullet label:nth-child(3),
    #pos4:checked ~ .bullet label:nth-child(4){background:#666;}
    
    @keyframes .Relatedproducts {
      0% {margin-left:0;} /* 0 ~ 10  : 정지 */
      10% {margin-left:0;} /* 10 ~ 25 : 변이 */
      25% {margin-left:-100%;} /* 25 ~ 35 : 정지 */
      35% {margin-left:-100%;} /* 35 ~ 50 : 변이 */
      50% {margin-left:-200%;}
      60% {margin-left:-200%;}
      75% {margin-left:-300%;}
      85% {margin-left:-300%;}
      100% {margin-left:0;}
    }
    
    
    
    /* 상품 상세 이미지 */
    .detail-product-img{
        border: 1px tomato solid;
        display: table;
        margin: 20px auto;
        width: 800px;
        height: 3000px;
    }

  
</style>

<script>
    // 수량/가격 기능 script 구문
    var sell_price;
    var amount;

    function init() {
        sell_price = document.form.sell_price.value;
        amount = document.form.amount.value;
        document.form.sum.value = sell_price;
        change();
    }

    function add() {
        hm = document.form.amount;
        sum = document.form.sum;
        hm.value++;

        sum.value = parseInt(hm.value) * sell_price;
    }

    function del() {
        hm = document.form.amount;
        sum = document.form.sum;
        if (hm.value > 1) {
            hm.value--;
            sum.value = parseInt(hm.value) * sell_price;
        }
    }

    function change() {
        hm = document.form.amount;
        sum = document.form.sum;

        if (hm.value < 0) {
            hm.value = 0;
        }
        sum.value = parseInt(hm.value) * sell_price;
    }  
</script>


<%@include file="/views/common/footer.jsp"%>