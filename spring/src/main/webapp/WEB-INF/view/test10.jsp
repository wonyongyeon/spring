<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>계산실습</title>
<head>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(function() {
            $("#cal_btn").click(function() {
                //console.log(1);
                var comPrice = Number($("input[name='cnt1']").val()) * 1000000;
                var tvPrice = Number($("input[name='cnt2']").val()) * 1500000;
                var refPrice = Number($("input[name='cnt3']").val()) * 2000000;

                // 추가상품 금액
                //console.log($("input[name='cnt4']"));
                var etcPrice=0;
                $("input[name='cnt4']").each(function(i,v){
                    //console.log($("select[name='product']").eq(i).val(), $("input[name='cnt4']").eq(i).val());
                    if ($("select[name='product']").eq(i).val() == '홈시어터') {
                        etcPrice += Number($("input[name='cnt4']").eq(i).val()) * 100000;
                    } else if ($("select[name='product']").eq(i).val() == '전자렌지') {
                        etcPrice += Number($("input[name='cnt4']").eq(i).val()) * 200000;
                    } else if ($("select[name='product']").eq(i).val() == '세탁기') {
                        etcPrice += Number($("input[name='cnt4']").eq(i).val()) * 500000;
                    }
                });
                //console.log('comPrice:'+comPrice);
                var totPrice = comPrice + tvPrice + refPrice + etcPrice;
                var vatPrice = totPrice*0.1;
                // 총견적비용
                var total = totPrice+vatPrice;
                if (total > 3000000) {
                    total = total * 0.8;
                } else if (total > 2000000) {
                    total = total * 0.9;
                }
                $("#price1").text(totPrice);
                $("#vat").text(vatPrice);
                $("#total").text(total);
            });

            $(".add_btn").click(function() {
                //console.log(1);
                var html = '<tr class="addtr extendTr">';
                html += '        <th></th>';
                html += '        <td class="padding_t">';
                html += '            <select name="product" class="full">';
                html += '                <option value="홈시어터">홈시어터</option>';
                html += '                <option value="전자렌지">전자렌지</option>';
                html += '                <option value="세탁기">세탁기</option>';
                html += '            </select>';
                html += '        </td>';
                html += '        <th>수량</th>';
                html += '        <td>';
                html += '            <input type="number" name="cnt4" value="" class="txt_r basic04" min="1" max="999" maxlength="3" /> 개';
                html += '            <a href="javascript:;" class="minus_btn"><img src="img/minus_ico.png"/></a>';
                html += '        </td>';
                html += '    </tr>';
                $("#tbl > tbody").append(html);

                $(".minus_btn").off('click'); // 이벤트 제거(이벤트 중첩을 막기 위해)
                $(".minus_btn").click(function() {
                    //console.log('minus');
                    var idx = $(this).index('.minus_btn'); // minus_btn 클래스 중에 내가 클릭한 대상의 인덱스
                    //console.log(idx);
                    $(".extendTr").eq(idx).remove();
                });
            });

            $("#reset_btn").click(function(){
                $("#tbl input").val('');
                $("#price1").text(0);
                $("#vat").text(0);
                $("#total").text(0);
            });
            
        });
    </script>
</head>
<body>
<div class="order_form">
    <div class="in">
        <div class="subject clear"><span>견적실습</span> <a href="javascript:;" id="reset_btn"><img src="img/refresh_ico.png"/></a></div>
        <div class="form">
            <table id="tbl" cellpadding="0" cellspacing="0" summary = "옵션 선택">
                <colgroup>
                    <col width="90px"/>
                    <col width="*"/>
                    <col width="90px"/>
                    <col width="*"/>
                </colgroup>
                <tbody>
                    <tr>
                        <th>컴퓨터</th>
                        <td class="padding_t">
                            <select name="computer" class="full" id="size">
                                <option value="1">1번상품</option>
                                <option value="2">2번상품</option>
                                <option value="3">3번상품</option>
                            </select>
                        </td>
                        <th>수량</th>
                        <td>
                            <input type="number" name="cnt1" value="" class="txt_r basic04" min="1" max="999" maxlength="3" /> 개
                        </td>
                    </tr>
                    <tr>
                        <th>TV</th>
                        <td class="padding_t">
                            <select name="tv" class="full" id="size">
                                <option value="1">1번상품</option>
                                <option value="2">2번상품</option>
                                <option value="3">3번상품</option>
                            </select>
                        </td>
                        <th>수량</th>
                        <td>
                            <input type="number" name="cnt2" value="" class="txt_r basic04" min="1" max="999" maxlength="3" /> 개
                        </td>
                    </tr>
                    <tr>
                        <th>냉장고</th>
                        <td class="padding_t">
                            <select name="ref" class="full" id="size">
                                <option value="1">1번상품</option>
                                <option value="2">2번상품</option>
                                <option value="3">3번상품</option>
                            </select>
                        </td>
                        <th>수량</th>
                        <td>
                            <input type="number" name="cnt3" value="" class="txt_r basic04" min="1" max="999" maxlength="3" /> 개
                        </td>
                    </tr>
                    <tr class="addtr">
                        <th>추가상품</th>
                        <td class="padding_t">
                            <select name="product" class="full">
                                <option value="홈시어터">홈시어터</option>
                                <option value="전자렌지">전자렌지</option>
                                <option value="세탁기">세탁기</option>
                            </select>
                        </td>
                        <th>수량</th>
                        <td>
                            <input type="number" name="cnt4" value="" class="txt_r basic04" min="1" max="999" maxlength="3" /> 개
                            <a href="javascript:;" class="add_btn"><img src="img/add_ico.png"/></a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="order_result">
                <div class="result1">
                    <p class="clear">
                        <span><b id="price1">0</b>원</span>
                        <span>공급가격 : </span>
                    </p>
                    <p class="clear ico">
                        <span><b id="vat">0</b>원</span>
                        <span>VAT : </span>
                    </p>
                </div>
                <div class="result2">
                    <p class="clear">
                        <span class="total"><b id="total">0</b>원</span>
                        <span><a href="javascript:;">총 견적비용 : </a></span>
                    </p>
                </div>
                
            </div>
            <div class="confirm_btn">
                <input type="button" id="cal_btn" value="비용계산"/>
            </div>
        </div>
    </div>
</div>
<p style="clear:both;"></p>
<div style="width:1000px; padding-left:100px;font-size:20px;">
    * 컴퓨터 1대당 100만원<br/>
    * TV 1대당 150만원<br/>
    * 냉장고 1대당 200만원<br/>
    * 추가상품 홈시어터 10만원, 전자렌지 20만원, 세탁기 50만원(+ 버튼 클릭시 선택란 추가)<br/>
    * 수량 입력시, 상품선택시 합계자동계산(공급가격, 부가세, 총 견적비용) 후 해당 위치에 표기<br/>
    * 총 견적비용이 200만원 초과시 10% 할인, 300만원 초과시 20% 할인 적용
</div>

</body>
</html>