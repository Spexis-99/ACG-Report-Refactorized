function buildTable(table_id, filename) {
	fetch(filename).then(response => {
		return response.json();
	}).then(data => {
		// Work with JSON data here
		console.log(data);
		data.forEach(element => {
			row = "<tr><td></td>"
			element.forEach(innerelement => {
				row += "<td>" + innerelement + "</td>";
			}
			)
			row += "</tr>";
			$("#" + table_id).append(row);
		});
	});
}