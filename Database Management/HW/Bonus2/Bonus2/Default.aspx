<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<add name="DBconnect" connectionString="Data Source = 140.123.174.54 ;Initial Catalog =DB605546001;User ID =DB605546001;Password = goydon6a@gmail.com" providerName="System.Data.SqlClient"/>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable([
                ['居住地區', '統計人數'],
                ['外島地區', 190],
                ['南區', 3725],
                ['北區', 7157],
                ['東區', 488],
                ['中區', 2610]
            ]);

            var options = {
                title: '3c賣場會員統計'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
