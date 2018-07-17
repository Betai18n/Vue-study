<template>
    <div>
        <span>list2</span>
        <!-- <v-chart
        prevent-render
        @on-render="renderChart"></v-chart> -->
        <v-chart
        prevent-render
        @on-render="renderChartcircle"></v-chart>
    </div>
</template>

<script>

    export default{
        name: 'list2',
        data(){
            return{
                
            }
        },
        methods: {
            renderChart ({ chart }) {
                const data = [ { x: '1', y: 85 } ]
                chart.source(data, {
                    y: {
                    max: 100,
                    min: 0
                    }
                })
                chart.axis(false)
                chart.tooltip(false)
                chart.coord('polar', {
                    transposed: true,
                    startAngle: -7*Math.PI / 6,
                    endAngle: 1 * Math.PI /6,
                    innerRadius: 0.8,
                    radius: 0.82
                })
                chart.guide().arc({
                    start: [ 0, 0 ],
                    end: [ 1, 99.98 ],
                    top: false,
                    style: {
                    lineWidth: 10,
                    stroke: '#ccc'
                    }
                })
                chart.guide().text({
                    position: [ '50%', '50%' ],
                    content: '85%',
                    style: {
                    fontSize: 24,
                    fill: '#1890FF'
                    }
                })
                chart.interval()
                    .position('x*y')
                    .size(10)
                    .animate({
                    appear: {
                        duration: 1200,
                        easing: 'cubicIn'
                    }
                    })
                chart.render()
            },
            renderChartcircle({chart}){
                var animateString = 'groupWaveIn';
                var easingString ='quadraticOut';
                var datacount = 40;
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
                        _item.value = 14;
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
                chart.guide().text({
                    position: ['50%', '45%'],
                    content: `you are ${datacount}`,
                    style: {
                        fill: '#53A0FD',
                        fontSize: 24,
                        textAlign: 'center',
                        textBaseline: 'middle'
                    }
                });
                chart.render();
            }
        }
    }
</script>