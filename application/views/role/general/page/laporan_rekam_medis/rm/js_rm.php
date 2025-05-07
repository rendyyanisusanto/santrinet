<script>
     // Pastikan hanya ada satu deklarasi variabel stats dari PHP
    (function() {
    const stats = <?= $data_get['chart']; ?>;

    const dates = Object.keys(stats);
    const statusList = Array.from(new Set(Object.values(stats).flatMap(date => Object.keys(date))));
    const seriesData = statusList.map(status => ({
        name: status,
        type: 'bar',
        stack: 'Total',
        data: dates.map(date => stats[date][status] || 0)
    }));

    const chartDom = document.getElementById('chart-container');
    const myChart = echarts.init(chartDom);

    const option = {
        title: { text: ' ' },
        tooltip: { trigger: 'axis' },
        legend: { data: statusList },
        xAxis: { type: 'category', data: dates },
        yAxis: { type: 'value' },
        series: seriesData
    };

    myChart.setOption(option);
})();
</script>