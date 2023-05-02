package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	app := gin.Default()

	app.Any("/", func(c *gin.Context) {
		ip := c.GetHeader("X-Real-IP")

		c.String(http.StatusOK, ip)
	})

	app.Run("0.0.0.0:8080")
}
