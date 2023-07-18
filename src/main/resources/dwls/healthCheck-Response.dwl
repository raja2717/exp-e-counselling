%dw 2.0
output application/json
---
{
  apiName: "${app.name}",
  apiVersion: "${api.version}",
  server: server.host,
  env: p('env'),
  statusCode: "200",
  message: "Alive"
}