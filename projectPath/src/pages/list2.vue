<template>
    <div>
        <span>list2</span>
        <!-- <v-chart
        prevent-render
        @on-render="renderChart"></v-chart> -->
        <!-- <v-chart id="c2"
        prevent-render
        @on-render="renderChartcircle"></v-chart> -->
        <div style="width:100vw;height:20vh">
            <div id="c2" style="background:#ffffff"></div>
        </div>
        
        <!-- <countup :start-val="0" :end-val="datacount" :duration="2" class="demo1"></countup> -->
    </div>
</template>

<script>
    export default{
        name: 'list2',
        data(){
            return{
                datacount: 0,
                chart: null
            }
        },
        created(){
            //this.renderG2Chartcircle();
        },
        mounted(){
            this.renderG2Chartcircle();
        },
        methods: {
            // renderChart ({ chart }) {
            //     const data = [ { x: '1', y: 85 } ]
            //     chart.source(data, {
            //         y: {
            //         max: 100,
            //         min: 0
            //         }
            //     })
            //     chart.axis(false)
            //     chart.tooltip(false)
            //     chart.coord('polar', {
            //         transposed: true,
            //         startAngle: -7*Math.PI / 6,
            //         endAngle: 1 * Math.PI /6,
            //         innerRadius: 0.8,
            //         radius: 0.82
            //     })
            //     chart.guide().arc({
            //         start: [ 0, 0 ],
            //         end: [ 1, 99.98 ],
            //         top: false,
            //         style: {
            //         lineWidth: 10,
            //         stroke: '#ccc'
            //         }
            //     })
            //     chart.guide().text({
            //         position: [ '50%', '50%' ],
            //         content: '85%',
            //         style: {
            //         fontSize: 24,
            //         fill: '#1890FF'
            //         }
            //     })
            //     chart.interval()
            //         .position('x*y')
            //         .size(10)
            //         .animate({
            //         appear: {
            //             duration: 1200,
            //             easing: 'cubicIn'
            //         }
            //         })
            //     chart.render()
            // },
            renderChartcircle({chart}){
                var animateString = 'groupWaveIn';
                var easingString ='quadraticOut';
                var datacount = 40;
                this.datacount = datacount;
                var data1 = [];
                for (var i = 0; i < 50; i++) {
                    var item = {};
                    item.type = i + '';
                    item.value = 10;
                    data1.push(item);
                }

                var data2 = [];
                for (var _i = 0; _i < 50; _i++) {
                    var _item = {};
                    _item.type = _i + '';
                    _item.value = 10;
                    if (_i === datacount) {
                        _item.value = 10;
                    }
                    if (_i > datacount) {
                        _item.value = 0;
                    }
                    data2.push(_item);
                }
                chart.scale({
                    type: {
                        range: [0, 1]
                    },
                    value: {
                        sync: true
                    }
                });
                chart.legend(false);
                chart.tooltip(false);
                //var view1 = chart.view();
                chart.source(data1);
                chart.axis(false);
                chart.coord('polar', {
                    startAngle: -9 / 8 * Math.PI,
                    endAngle: 1 / 8 * Math.PI,
                    innerRadius: 0.75,
                    radius: 0.8
                });
                chart.interval().position('type*value').color('#CBCBCB').size(4).animate({
                    appear: {
                        animation: animateString,
                        duration: 1000,
                        //delay: 0,
                        easing: easingString
                    }
                });
                chart.render();

                chart.source(data2);
                chart.axis(false);
                chart.coord('polar', {
                    startAngle: -9 / 8 * Math.PI,
                    endAngle: 1 / 8 * Math.PI,
                    innerRadius: 0.75,
                    radius: 0.8
                });
                //chart.interval().position('type*value').color('value', '#3023AE-#53A0FD').opacity(1).size(6);
                chart.interval().position('type*value').color('type', '#C9493C-#53A0FD').size(4).animate({
                    appear: {
                        animation: animateString,
                        duration: 1500,
                        delay: 1000,
                        easing: easingString
                    }
                });

                chart.render();

                var numcount = 0;
                var intTimer = setInterval(function(){
                    chart.guide().clear();
                    chart.guide().html({
                        position:['50%', '45%'], // html 的中心位置， 值为原始数据值，支持 callback
                        alignX: 'center',
                        alignY: 'middle',
                        offsetX: 0,
                        offsetY: 0,
                        //html: `<countup :start-val='0' :end-val='40' :duration='2' class='demo1'></countup>`
                        html: `<span>${numcount}</span>`
                    });
                    chart.repaint();
                    //chart.render();
                    //chart.changeData();
                    numcount++;
                    if(numcount==41)
                    {
                        intTimer=window.clearInterval(intTimer);
                    }
                },50)
            },
            renderG2Chartcircle(){
                var animateString = 'clipIn';
                var easingString ='easeQuadIn';
                var datacount = 40;
                this.datacount = datacount;
                var data1 = [];
                for (var i = 0; i < 50; i++) {
                    var item = {};
                    item.type = i + '';
                    item.value = 10;
                    data1.push(item);
                }

                var data2 = [];
                for (var _i = 0; _i < 50; _i++) {
                    var _item = {};
                    _item.type = _i + '';
                    _item.value = 10;
                    if (_i === datacount) {
                        _item.value = 10;
                    }
                    if (_i > datacount) {
                        _item.value = 0;
                    }
                    data2.push(_item);
                }
                
                this.chart = new G2.Chart({
                    container: 'c2',
                    forceFit: true,
                    height: 250,
                    padding: 0
                });
                
                this.chart.scale({
                    type: {
                        range: [0, 1]
                    },
                    value: {
                        sync: true
                    }
                });
                this.chart.legend(false);
                this.chart.tooltip(false);

                var view1 = this.chart.view();
                view1.source(data1);
                view1.axis(false);
                view1.coord('polar', {
                    startAngle: -9 / 8 * Math.PI,
                    endAngle: 1 / 8 * Math.PI,
                    innerRadius: 0.75,
                    radius: 0.8
                });
                view1.interval().position('type*value').color('#CBCBCB').size(4).animate({
                    appear: {
                        animation: animateString,
                        duration: 1000,
                        //delay: 0,
                        easing: easingString
                    }
                });
                //chart.render();
                var view2 = this.chart.view();
                view2.source(data2);
                view2.axis(false);
                view2.coord('polar', {
                    startAngle: -9 / 8 * Math.PI,
                    endAngle: 1 / 8 * Math.PI,
                    innerRadius: 0.75,
                    radius: 0.8
                });
                //chart.interval().position('type*value').color('value', '#3023AE-#53A0FD').opacity(1).size(6);
                view2.interval().position('type*value').color('type', '#C9493C-#53A0FD').size(4).animate({
                    appear: {
                        animation: animateString,
                        duration: 1500,
                        delay: 1000,
                        easing: easingString
                    }
                });

                this.chart.render();
                var view3 = this.chart.view();
                var numcount = 0;
                var intTimer = setInterval(function(){
                    view3.guide().clear();
                    view3.guide().text({
                        position:['43%', '60%'], // html 的中心位置， 值为原始数据值，支持 callback
                        alignX: 'center',
                        alignY: 'middle',
                        style: {
                            fill: '#666', // 文本颜色
                            fontSize: '50', // 文本大小
                            fontWeight: 'bold', // 文本粗细
                            rotate: 0 // 旋转角度
                        },
                        offsetX: 0,
                        offsetY: 0,
                        //html: `<countup :start-val='0' :end-val='40' :duration='2' class='demo1'></countup>`
                        content: `${numcount}`
                    });
                    view3.repaint();
                    //chart.render();
                    //chart.changeData();
                    numcount++;
                    if(numcount==(datacount+1))
                    {
                        intTimer=window.clearInterval(intTimer);
                    }
                },2500/this.datacount);
            }
        }
    }
</script>

<style>
    .demo1{
        margin-top: -40vh;
        margin-left: 49vw;
    }
</style>
