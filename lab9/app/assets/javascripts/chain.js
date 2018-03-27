function show_result(data) {
  var result = $("#result")
  result.empty()
  if (data.type) {
  	result.append('<table style="display: inline-block; border: 1px solid; float: left; ", id="initial_table"><thead><tr><th>Исходная цепочка</th></tr></thead></table>')
  	$.each(data.value1, function(_key, value) {
  		$('#initial_table').append('<tr><th>' + value + '</th></tr>')
  	})
  	result.append('<table style="display: inline-block; border: 1px solid; float: left; ", id="alls_table"><thead><tr><th>Все найденные</th></tr></thead></table>')
  	$.each(data.value2, function(_key, value) {
  		$('#alls_table').append('<tr><th>' + value + '</th></tr>')
  	})
  	result.append('<table style="display: inline-block; border: 1px solid; float: left; ", id="result_table"><thead><tr><th>Самая длинная</th></tr></thead></table>')
  	$.each(data.value3, function(_key, value) {
  		$('#result_table').append('<tr><th>' + value + '</th></tr>')
  	})
  } else {
  	result.append("Invalid array")
  }
}

$(document).ready(function(){
  $("#chain_form").submit(function(e) {
  	e.preventDefault()
  	$.get("/chain/view.json", {n: $('#n').val()}, function(data) {
  		console.log(data)
    	show_result(data)
    })
    return false
  })
})