$(document).ready(function(){
        $('.welcome-1').show();
        $('.welcome-2').show();
        $('.welcome-3').show();
        $('.welcome-4').show();
    $('.page-1').hide();
    $('.page-2').hide();
    $('.page-3').hide();
    $('.page-4').hide();
    $('.edge-1').hide();
    $('.edge-2').hide();
    $('.edge-3').hide();
    $('.edge-4').hide();
        document.getElementById('b1').disabled=true;
        document.getElementById('b2').disabled=true;
        document.getElementById('b3').disabled=true;
        document.getElementById('b4').disabled=true;
        document.getElementById('l1').disabled=false;
        document.getElementById('l2').disabled=false;
        document.getElementById('l3').disabled=false;
        document.getElementById('l4').disabled=false;

 });
//$$('.welcome-1', '.welcome-2','.welcome-3','.welcome-4','.edge-1','.edge-2','.edge-3','.edge-4');
 $(function() {  
$('#l1').swipe({
    tap: function(event, target){
    //alert("wwwwwww");
    pa1();
    }
});
$('#l2').swipe({
    tap: function(event, target){
    pa2();
    }
});
$('#l3').swipe({
    tap: function(event, target){
    pa3();
    }
});
$('#l4').swipe({
    tap: function(event, target){
    pa4();
    }
});

$('#b1').swipe({
    tap: function(event, target){
    back();
    }
});
$('#b2').swipe({
    tap: function(event, target){
    back();
    }
});
$('#b3').swipe({
    tap: function(event, target){
    back();
    }
});
$('#b4').swipe({
    tap: function(event, target){
    back();
    }
});
});


    function pa1(){
        //alert("88888");
        $('.page-1').fadeIn(2000);
        $('.edge-1').show();
        $('.edge-2').show();
        $('.edge-3').show();
        $('.edge-4').show();
        $('.welcome-1').hide();
        $('.welcome-2').hide();
        $('.welcome-3').hide();
        $('.welcome-4').hide();
        document.getElementById('l1').disabled=true;
        document.getElementById('l2').disabled=true;
        document.getElementById('l3').disabled=true;
        document.getElementById('l4').disabled=true;
        document.getElementById('b1').disabled=false;
        document.getElementById('b2').disabled=false;
        document.getElementById('b3').disabled=false;
        document.getElementById('b4').disabled=false;

    }
    function pa2(){
        $('.page-2').fadeIn(2000);
        $('.edge-1').show();
        $('.edge-2').show();
        $('.edge-3').show();
        $('.edge-4').show();
        $('.welcome-1').hide();
        $('.welcome-2').hide();
        $('.welcome-3').hide();
        $('.welcome-4').hide();
        document.getElementById('l1').disabled=true;
        document.getElementById('l2').disabled=true;
        document.getElementById('l3').disabled=true;
        document.getElementById('l4').disabled=true;
        document.getElementById('b1').disabled=false;
        document.getElementById('b2').disabled=false;
        document.getElementById('b3').disabled=false;
        document.getElementById('b4').disabled=false;
    }
    function pa3(){
        $('.page-3').fadeIn(2000);
        $('.edge-1').show();
        $('.edge-2').show();
        $('.edge-3').show();
        $('.edge-4').show();
        $('.welcome-1').hide();
        $('.welcome-2').hide();
        $('.welcome-3').hide();
        $('.welcome-4').hide();
        document.getElementById('l1').disabled=true;
        document.getElementById('l2').disabled=true;
        document.getElementById('l3').disabled=true;
        document.getElementById('l4').disabled=true;
        document.getElementById('b1').disabled=false;
        document.getElementById('b2').disabled=false;
        document.getElementById('b3').disabled=false;
        document.getElementById('b4').disabled=false;
    }
    function pa4(){
        $('.page-4').fadeIn(2000);
        $('.edge-1').show();
        $('.edge-2').show();
        $('.edge-3').show();
        $('.edge-4').show();
        $('.welcome-1').hide();
        $('.welcome-2').hide();
        $('.welcome-3').hide();
        $('.welcome-4').hide();
        document.getElementById('l1').disabled=true;
        document.getElementById('l2').disabled=true;
        document.getElementById('l3').disabled=true;
        document.getElementById('l4').disabled=true;
        document.getElementById('b1').disabled=false;
        document.getElementById('b2').disabled=false;
        document.getElementById('b3').disabled=false;
        document.getElementById('b4').disabled=false;
    }
    function back(){
        //alert("88888");
        $('.page-1').hide();
        $('.page-2').hide();
        $('.page-3').hide();
        $('.page-4').hide();
        $('.edge-1').hide();
        $('.edge-2').hide();
        $('.edge-3').hide();
        $('.edge-4').hide();
        $('.welcome-1').show();
        $('.welcome-2').show();
        $('.welcome-3').show();
        $('.welcome-4').show();
        document.getElementById('l1').disabled=false;
        document.getElementById('l2').disabled=false;
        document.getElementById('l3').disabled=false;
        document.getElementById('l4').disabled=false;
        document.getElementById('b1').disabled=true;
        document.getElementById('b2').disabled=true;
        document.getElementById('b3').disabled=true;
        document.getElementById('b4').disabled=true;

    }