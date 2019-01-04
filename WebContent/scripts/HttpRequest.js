function getXMLHttpRequest(){
	if(window.ActiveXObject){
		try{
			return new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e1){
			try{
				return new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e2){
				return null;
			}
		}
	}else if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}else{
		return null;
	}
}
//위의 function 코드는 항상 똑같이 사용하는 것.

var httpRequest = null;
//html에서 서버와 통신할 수 있는 객체를 만든 것.

function sendRequest(url, params, callback, method){
	httpRequest = getXMLHttpRequest();
	
	var httpMethod = method ? method : 'GET';			//메소드에 아무것도 없으면 'get'으로 해라
	if(httpMethod != 'GET' && httpMethod != 'POST'){	//get이나 post가 아닌 오타가 나면 get으로 해라.
		httpMethod = 'GET';
	}
	var httpParams = (params == null || params == '') ? null : params;	//파라미터에 아무것도 없다면 null로 하고 뭐가 있으면 그 값을 써라.
	var httpUrl = url;
	if(httpMethod == 'GET' && httpParams != null){						//get방식은 queryString으로 값을 넘기니, 넘겨줄 값은 있고 get방식이면
		httpUrl = httpUrl + "?" + httpParams;							//url에 ? 쿼리스트링 형식으로 보내라는 뜻.
	}
	
	//alert("method == " + httpMethod + "\turl == " + httpUrl + "\tparam == " + httpParams);
	httpRequest.open(httpMethod, httpUrl, true);						//비동기가 true다. 
	httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	httpRequest.onreadystatechange = callback;							//상태가 바뀔 때마다 어떤 함수를 호출할 것인가. (0~4)
	//alert(httpMethod == 'POST' ? httpParams : null);
	httpRequest.send(httpMethod == 'POST' ? httpParams : null);			//get방식은 위에서 처리를 했고 여기서는 post방식 처리하라. 
}