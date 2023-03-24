
			    // 基于准备好的dom，初始化echarts实例
			    var myChart = echarts.init(document.getElementById('main'));
			 
			    // 指定图表的配置项和数据
			    var option = {
			            legend: {},
			            tooltip: {},
			            dataset: {
			                // 这里指定了维度名的顺序，从而可以利用默认的维度到坐标轴的映射。
			                // 如果不指定 dimensions，也可以通过指定 series.encode 完成映射，参见后文。
			                dimensions: ['product', '座位总数', '正在使用', '进出人次'],
			                source: [
			                    {product: '旺旺大楼', '座位总数': 43.3, '正在使用': 85.8, '进出人次': 93.7},
			                    {product: '汪汪队', '座位总数': 83.1, '正在使用': 73.4, '进出人次': 55.1},
			                    {product: '朵拉爱冒险', '座位总数': 86.4, '正在使用': 65.2, '进出人次': 82.5},
			                    {product: '小徐睡着啦', '座位总数': 72.4, '正在使用': 53.9, '进出人次': 39.1}
			                ]
			            },
			            xAxis: {type: 'category'},
			            yAxis: {},
			            series: [
			                {type: 'bar'},
			                {type: 'bar'},
			                {type: 'bar'}
			            ]
			        };
			
			    // 使用刚指定的配置项和数据显示图表。
			    myChart.setOption(option);
		