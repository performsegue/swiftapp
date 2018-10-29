import Kitura

// Create a new router
let router = Router()

// Handle HTTP GET requests to /
router.get("/wish") {
    request, response, next in
    response.send(["Hello":"world"])
    next()
}

router.get("/SayHello") {
    request, response, next in
    response.send("Swift Says Hello")
}



// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8080, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()
