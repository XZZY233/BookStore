function valueToText(str, value) {
	str = str.substring(1, str.length - 1);
	var array = str.split(",");
	for ( var i = 0; i < array.length; i++) {
		var array2 = array[i].split("=");
		if ($.trim(array2[0]) == $.trim(value)) {
			return array2[1];
		}
	}
	
	return "类型没有定义";
}
