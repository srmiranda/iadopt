$(function () {
  $.ajax({
      method: 'GET',
      url: window.location.href,
      dataType: 'json'
  })

  .done(function(data){

    $('#chart').highcharts({
        chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'column'
        },
        yAxis: {
            title: {
                text: 'Amount Available'
            }
        },
        xAxis: {
            title: {
                text: 'Breed Name'
            }
        },
        title: {
          text: 'Breed Amounts Available'
        },
        plotOptions: {
          pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: true,
              style: {
                  color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
              }
            }
          }
        },
        series: [{
          name: "Amount",
          data: data[0]
      }]
    });
  });
});
