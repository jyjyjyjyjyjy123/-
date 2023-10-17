//scroll.js - 해당 파일만 임포트 하면 모든 페이지 내에 상단 스크롤 바 생기게 하기

/* 
    1. <div id="bar"></div> 동적 추가
    2. CSS 적용
    3. 이벤트 추가
*/

//1,2 업무
$('<div id="scroll-bar-indicator"></div>').css({
    window: 0,
    height: '5px',
    backgroundColor: 'lightslategray',
    position: 'fixed',
    left: 0,
    top: 0,
    border: 0,
    padding: 0,
    margin: 0
}).prependTo($('body'));

//3 업무
$(document).scroll(function() {
    
    //문서의 세로길이(스크롤바 최대 위치) : 100% = 스크롤바 위치 : x

    let x = $(document).scrollTop() * 100 / ($(document).outerHeight() - $(window).outerHeight());

    $('#scroll-bar-indicator').css('width', x + '%');
});