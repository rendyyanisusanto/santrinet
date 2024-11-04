<script type="text/javascript">
    
    get_grap_penjualan();
    get_grap_produk();
    // function filter_penjualan() {
    //     get_grap_penjualan($('.showName').val(), $('.dateStart').val(), $('.dateEnd').val());
    //     // $('.modal-filter-penjualan').modal('toggle');
    // }
    
    function get_grap_penjualan(type ="", dataDetail="", datestart="", dateend=""){
        setTimeout(function(data){
            send_ajax('Dashboard/get_stats_penjualan', {type:type,dataDetail:dataDetail,  datestart:datestart, dateend:dateend}).then(function(dataset){
                var ds = JSON.parse(dataset);


                var line_basic = echarts.init(document.getElementById('line_basics'));
                line_basic.setOption({

                    // Define colors
                    color: ['#EF5350', '#66BB6A'],

                    // Global text styles
                    textStyle: {
                        fontFamily: 'Roboto, Arial, Verdana, sans-serif',
                        fontSize: 13
                    },

                    // Chart animation duration
                    animationDuration: 750,

                    // Setup grid
                    grid: {
                        left: 0,
                        right: 40,
                        top: 35,
                        bottom: 0,
                        containLabel: true
                    },

                    // Add legend
                    legend: {
                        data: ['Maximum', 'Minimum'],
                        itemHeight: 8,
                        itemGap: 20
                    },

                    // Add tooltip
                    tooltip: {
                        trigger: 'axis',
                        backgroundColor: 'rgba(0,0,0,0.75)',
                        padding: [10, 15],
                        textStyle: {
                            fontSize: 13,
                            fontFamily: 'Roboto, sans-serif'
                        }
                    },

                    // Horizontal axis
                    xAxis: [{
                        type: 'category',
                        boundaryGap: false,
                        data: ds.tahun ,
                        axisLabel: {
                            color: '#333'
                        },
                        axisLine: {
                            lineStyle: {
                                color: '#999'
                            }
                        },
                        splitLine: {
                            lineStyle: {
                                color: ['#eee']
                            }
                        }
                    }],

                    // Vertical axis
                    yAxis: [{
                        type: 'value',
                        axisLabel: {
                            formatter: '{value}',
                            color: '#333'
                        },
                        axisLine: {
                            lineStyle: {
                                color: '#999'
                            }
                        },
                        splitLine: {
                            lineStyle: {
                                color: ['#eee']
                            }
                        },
                        splitArea: {
                            show: true,
                            areaStyle: {
                                color: ['rgba(250,250,250,0.1)', 'rgba(0,0,0,0.01)']
                            }
                        }
                    }],

                    // Add series
                     
                       
                      series:  {
                            name: 'Penjualan',
                            type: 'line',
                            data: ds.data,
                            smooth: true,
                            symbolSize: 7,
                            markLine: {
                                data: [{
                                    type: 'average',
                                    name: 'Average'
                                }]
                            },
                            itemStyle: {
                                normal: {
                                    borderWidth: 2
                                }
                            }
                        }
                    
                });
            })

        }, 1000)
    }
    

        // pie
    function get_grap_produk(type ="", dataDetail="", datestart="", dateend=""){
        
        setTimeout(function(data){
            send_ajax('Dashboard/get_stats_produk',{type:type,dataDetail:dataDetail, datestart:datestart, dateend:dateend}).then(function(dataset){
                var ds = JSON.parse(dataset);

                console.log(dataset)
                var pie_basic_element = document.getElementById('pie_basic');
                var pie_basic = echarts.init(pie_basic_element);


                //
                // Chart config
                //

                // Options
                pie_basic.setOption({

                    // Colors
                    color: [
                        '#2ec7c9','#b6a2de','#5ab1ef','#ffb980','#d87a80',
                        '#8d98b3','#e5cf0d','#97b552','#95706d','#dc69aa',
                        '#07a2a4','#9a7fd1','#588dd5','#f5994e','#c05050',
                        '#59678c','#c9ab00','#7eb00a','#6f5553','#c14089'
                    ],

                    // Global text styles
                    textStyle: {
                        fontFamily: 'Roboto, Arial, Verdana, sans-serif',
                        fontSize: 13
                    },

                    // Add title
                    title: {
                        text: 'Product popularity',
                        subtext: 'Brand information',
                        left: 'center',
                        textStyle: {
                            fontSize: 17,
                            fontWeight: 500
                        },
                        subtextStyle: {
                            fontSize: 12
                        }
                    },

                    // Add tooltip
                    tooltip: {
                        trigger: 'item',
                        backgroundColor: 'rgba(0,0,0,0.75)',
                        padding: [10, 15],
                        textStyle: {
                            fontSize: 13,
                            fontFamily: 'Roboto, sans-serif'
                        },
                        formatter: "{a} <br/>{b}: {c} ({d}%)"
                    },

                    // Add legend
                    legend: {
                        orient: 'vertical',
                        top: 'center',
                        left: 0,
                        data: ds.title,
                        itemHeight: 8,
                        itemWidth: 8
                    },

                    // Add series
                    series: [{
                        name: 'Produk',
                        type: 'pie',
                        radius: '70%',
                        center: ['50%', '57.5%'],
                        itemStyle: {
                            normal: {
                                borderWidth: 1,
                                borderColor: '#fff'
                            }
                        },
                        data: ds.data
                    }]
                });
            })

        }, 1000)
    
    }


</script>