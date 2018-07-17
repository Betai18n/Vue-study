<template>
    <div>
        <span>list3</span>
        <div id="c1">
            <div>
                <v-chart
                prevent-render
                @on-render="renderChart"></v-chart>
            </div>
        </div>
    </div>
</template>

<script>
   
    export default{
        name: 'list3',
        data() {
            return{
                //data
            }
        },
        methods: {
            renderChart ({ chart }) {
            var recentOneMonth = [{
                name: '超大盘能力',
                value: 6.5
            }, {
                name: '抗跌能力',
                value: 9.5
            }, {
                name: '稳定能力',
                value: 9
            }, {
                name: '绝对收益能力',
                value: 6
            }, {
                name: '选证择时能力',
                value: 6
            }, {
                name: '风险回报能力',
                value: 8
            }];
            //track(false)
            chart.source(recentOneMonth, {
                value: {
                    min: 0,
                    max: 10
                }
            });
            chart.coord('polar');
            chart.tooltip(false); // 关闭 tooltip
            chart.axis('value', {
                grid: {
                    lineDash: null
                },
                label: null,
                line: null
            });
            chart.axis('name', {
                grid: {
                    lineDash: null
                }
            });
            chart.area().position('name*value').color('#FE5C5B').style({
                fillOpacity: 0.2
                }).animate({
                appear: {
                    animation: 'groupWaveIn'
                }
            });
            chart.line().position('name*value').color('#FE5C5B').size(1).animate({
                appear: {
                    animation: 'groupWaveIn'
                }
            });

            chart.point().position('name*value').color('#FE5C5B').animate({
                appear: {
                 delay: 300
                }
            });

            chart.guide().html({
                position: ['50%', '50%'],
                html: '<div style="color: #FE5C5B;white-space: nowrap;text-align:center;">' + '<p style="font-size: 12px;margin:0;">诊断分</p>' + '<p style="font-size: 32px;margin:0;font-weight: bold;">73</p>' + '</div>'
            });
            chart.render();
            }
        }
    }
</script>