package generator

import (
	"fmt"
	"math/rand"
	"strings"
)

func Generate(name string, length int, r *rand.Rand) string {
	greeting := greetings[r.Intn(len(greetings))]
	closing := closings[r.Intn(len(closings))]

	bodyParts := []string{}
	for i := 0; i < length; i++ {
		bodyParts = append(bodyParts, formatString(bodies[r.Intn(len(bodies))], name))
	}
	body := strings.Join(bodyParts, "\n")

	return formatString(greeting, name) + "\n" + body + "\n" + formatString(closing, name)
}

func formatString(format string, name string) string {
	count := strings.Count(format, "%s")
	args := make([]interface{}, count)
	for i := 0; i < count; i++ {
		args[i] = name
	}
	return fmt.Sprintf(format, args...)
}