package testingGo

import (
	"testing"
)

func Test_addNumbers(t *testing.T) {

	expected := 4
	actual := addNumbers(2, 3)
	if expected != actual {
		t.Error("Incorrect result: expected ", expected, " got ", actual)
	}
}
