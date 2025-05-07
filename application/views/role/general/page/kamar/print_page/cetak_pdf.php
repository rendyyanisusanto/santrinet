<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		#table {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #table td, #table th {
                border: 1px solid #ddd;
                padding: 1px;
                font-size: 10px;
            }

            #table tr:nth-child(even){background-color: #f2f2f2;}

            #table tr:hover {background-color: #ddd;}

            #table th {
                padding-top: 10px;
                padding-bottom: 10px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
	</style>
</head>
<body>

	<table id="table" border="1" width="100%">
		<tr>
			<td>No</td>
			<?php foreach ($param['column'] as $key => $value): ?>
				<td><?php echo $value ?></td>
			<?php endforeach ?>
		</tr>
		<?php 
		$i=1;
		foreach ($data as $key => $value): ?>
			<tr>
				<td><?php echo $i ?></td>
				<?php foreach ($param['column'] as $key2 => $value2): ?>
					<td><?php echo $value[$value2]?></td>
				<?php endforeach ?>
			</tr>
		<?php 
		$i++;
		endforeach ?>
	</table>
</body>
</html>