%dw 2.0
fun convertDATE(timestamp) = timestamp as String {format: "KK:mm:ss a"}
fun buildResponseStatus(errorMsg,serverInfo,requestTimestamp,statusCode,desc) = {
	"Status": {
        "message": errorMsg default "ERROR",
        "serverRunOn": serverInfo default "",
        "requestTimestamp": convertDATE(requestTimestamp default now()),
        "responseTimestamp": convertDATE(now()),
        "code": statusCode default "500",
        "description": desc default "",
    }
}