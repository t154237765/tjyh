
var lottery={
	index : 1, //起点
	speed :1, //初始速度
	roll:0, //定时器id
	cycle : 1, //已跑的圈数
	times : 3, //至少跑几圈
	prize : -1, //中奖索引
	status: 0,
	btn:0,
	rollStatus:0,/*跑的状态*/
	run : function (runloop) {
		var before = lottery.index == 1 ? 8 : lottery.index - 1;
		$(".roll-" + lottery.index).next().addClass("current-active");
		$(".roll-" + before).next().removeClass("current-active");

		//初步加快的过程
		lottery.upSpeed();
		if(lottery.prize>=1){
			lottery.downSpeed();
		}

		lottery.index += 1;
		lottery.index = lottery.index == 9 ? 1 : lottery.index;
	},
	//提速度
	upSpeed : function () {
		if (lottery.cycle < 2 && lottery.speed > 100) {
			lottery.speed -= lottery.index * 15;
			lottery.stop();
			lottery.start();
		}
	},
	//降速
	downSpeed:function () {
		if (lottery.index == 8) {
			lottery.cycle += 1;
		}
		if (lottery.cycle > lottery.times - 1 && lottery.speed < 400) {
			lottery.speed += 10;
			lottery.stop();
			lottery.start();
		}

		if (lottery.cycle > lottery.times && lottery.index == lottery.prize) {
			lottery.stop();
			lottery.showPrize();
		}

	},
	//展示展品
	showPrize:function(){
		setTimeout(function(){
			//$('#prize_modal').modal({closeViaDimmer: false,cancelable: false});
			if(lottery.status=='2'){
				$('.notwin_modal').modal('open');
			}else if(lottery.status=='3'){
				$('.bingo_modal').modal('open');
			}else if(lottery.status=='4'){
				$('.bingo_yin_modal').modal('open');
			}
			
			isHas = false;
		},1000);
	},

	//重新开始
	reset : function () {
		lottery.btn=$(this);
		lottery.speed = 400;
		lottery.cycle = 0;

		lottery.run();
	},
	start : function () {
		lottery.rollStatus=1;
		lottery.roll = setInterval(lottery.run,lottery.speed);
	},
	stop : function () {
		lottery.rollStatus=0;
		clearInterval(lottery.roll);
	}
};