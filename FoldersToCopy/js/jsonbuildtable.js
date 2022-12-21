function 	buildTable(table_id, filename) {
	/**
 		* Fill table from json file using id and filename
 		* @param  {String} table_id Selector for the table
 		* @param  {String} filename File name and directory
 	*/
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