	function buildTable(table_id,data){
		var table = document.getElementById(table_id)
		for (var i = 0; i < data.length; i++){
			var row = `<tr>`;
			data[i].foreach(){
				var row=row+`${data[i].name}`;

			};
			
					// 		<td>${data[i].name}</td>
					// 		<td>${data[i].age}</td>
					// 		<td>${data[i].birthdate}</td>
					//   </tr>`


			table.innerHTML += row



			var row = `<tr>`;
			data.forEach(obj => {
				Object.entries(obj).forEach(([key, value]) => {
					console.log(`${key} ${value}`);
					row=row + `${value}`;
				});
		}
	}