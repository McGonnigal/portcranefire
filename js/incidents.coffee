---
---

$ ->

	googleSheetKey = "1yqCj1UVr9Cde-Ij1WpQJDEufLLOv4wdGOm3usB3sPJU"

	Highcharts.data
		googleSpreadsheetKey: googleSheetKey
		googleSpreadsheetWorksheet: 1
		parsed: (columns) ->
			i = 1
			$table = $("#incidents")
			$tableBody = $table.find("tbody")

			$table.find('#year').text columns[0][0]

			$footerRow = $table.find("tfoot tr")
			$footerRow.append $('<th>').text columns[0][columns[0].length-1]
			$footerRow.append $('<th>').text columns[1][columns[0].length-1]
			$footerRow.append $('<th>').text columns[2][columns[0].length-1]

			while i < columns[0].length-1
				$row = $("<tr>")
				$row.append $('<td>').text( columns[0][i] )
				$row.append $('<td>').text( columns[1][i] )
				$row.append $('<td>').text( columns[2][i] )
				$tableBody.append $row
				i++
			return