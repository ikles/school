jQuery(document).ready(function(){

var hg=jQuery('.wrapper').height();
var w_height = jQuery(window).height();
var b_height = jQuery('body').height();

if(hg>w_height){
jQuery('body').css({'height':hg+'px'});
console.log(b_height);
console.log(hg);
}
// Выравниваем нижние блоки по центру страницы
var w_width = jQuery(window).width();
var mr = (w_width - 1170)/2;
jQuery('.footerwrapp,.footer').css({'left':mr+'px'});
//
function show(){
jQuery('.pop-up').show();

}
function hide(){
jQuery('.pop-up').hide();

}
	jQuery('.r').mouseover(function(){
		
	});
		jQuery('.r').mouseout(function(){
		hide();
	});
	
		

		
	
	
            var example = document.getElementById("example"),
                ctx     = example.getContext('2d');
				
			jQuery('.r').mouseout(function(){ //очищаем канвас при отводе мыши с обьекта на карте
					ctx.clearRect(0, 0, 1170, 1829)
				jQuery('.pop-up').removeClass('r_left');
				jQuery('.pop-up').removeClass('pool');
				jQuery('.pop-up').removeClass('siren');
				jQuery('.pop-up').removeClass('river');
				});
			jQuery('.r').mouseover(function(){
				var id=jQuery(this).attr('id');
				if((id=="r178")||(id=="r179")||(id=="r178")||(id=="r180")||(id=="r181")||(id=="r182")||(id=="r183")||(id=="r184")||(id=="r185")||(id=="r186")||(id=="r187")||(id=="r188")||(id=="r189")||(id=="r190")||(id=="r191")||(id=="r192")||(id=="r193")){
				id="r_left";
				}
				if((id=="r197a")||(id=="r198a")||(id=="r199a")||(id=="r200a")||(id=="r201a")||(id=="r202a")||(id=="r203a")){
				id="siren";
				}
				if((id=="r195")||(id=="r196")||(id=="r197")||(id=="r198")||(id=="r199")||(id=="r200")||(id=="r201")||(id=="r202")||(id=="r203")||(id=="r204")||(id=="r205")||(id=="r206")||(id=="r207")||(id=="r208")||(id=="r209")||(id=="r210")||(id=="r211")
				||(id=="r212")||(id=="r213")||(id=="r214")||(id=="r215")||(id=="r216")||(id=="r217")||(id=="r218")||(id=="r219")||(id=="r220")||(id=="r221")||(id=="r222")||(id=="r223")||(id=="r224")||(id=="r225")||(id=="r226")){
				id="river";
				}
				var tx1=jQuery('.table-map').find("."+id).html();//Находим строку в таблице модуля "Карта", в которой хранится инфа по данному участку
				
				var tx= tx1.replace(/&nbsp;/g,'');
			
				//Определяем позицию курсора на карте
					jQuery('#example').mousemove(function(e){
					 var x = e.offsetX==undefined?e.layerX:e.offsetX;
					 var y = e.offsetY==undefined?e.layerY:e.offsetY;
					  jQuery('#x').val(x);
					  jQuery('#y').val(y);
					 
					 });
				/////////////////
				
				var y=jQuery(this).css('top');
				var x=jQuery(this).css('left');
				var xx=parseInt(x)-250;
				var yy=parseInt(y);
				if(id=="r_left" || id=="pool" || id=="siren" || id=="river"  ){xx=xx-250;}
				jQuery('.pop-up').css({'left':xx+'px','top':yy+'px'});
				show();//отображаем окно с параметрами
				var msg="<table class='pop-table '><tr>"+tx+"</tr></table>";
				
				
				//console.log(msg);
				jQuery('.pop-up').html(msg);
				jQuery('.pop-up').addClass(id);
				var wdth= jQuery('.pop-table td img').width();//определяем ширину изображения в окна
				//jQuery('.pop-up').width(wdth);//задаем окну ширину равную ширине изображения, для того чтобы был перенос слов если они не вмещаются в окно, а не растяжение окна по ширине.
				ctx.beginPath();
				////Задаем параметры линии границы участка
				ctx.lineWidth = 2;
				ctx.strokeStyle = '#FFA723';
			
				
				//console.log(id);
				var r=rr[id];
				//Отрисовываем границу участка
				 for(var i=0;i<r.length;i++)
				 
				 {
					if(i==0){ctx.moveTo(r[i][0],r[i][1]);}
					else{ 
						ctx.lineTo(r[i][0],r[i][1]);
					}
				 }
					/*ctx.moveTo(762,170);
					ctx.lineTo(788,170);
					ctx.lineTo(791,230);
					ctx.lineTo(736,227);
					ctx.lineTo(762,170);*/
					ctx.stroke(); // *22
					ctx.closePath();
			});
});