package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	hostname, _ := os.Hostname()
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"code":    200,
			"message": "api server v3",
			"server":  hostname,
			"author":  "Adhithia Irvan Rachmawan",
		})
	})
	r.Run("0.0.0.0:8000")
}
