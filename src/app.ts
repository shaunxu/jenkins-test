import * as http from "http";

http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader("Content-Type", "text/plain");
    res.end("Hello, World!!!\n");
}).listen(22222, "0.0.0.0", () => {
    console.log("ready");
});

// 1