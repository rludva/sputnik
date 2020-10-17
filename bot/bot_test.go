package bot

import "testing"

func TestResponose(t *testing.T) {
	type testCase struct {
		question       string
		expectedAnswer string
	}

	testCases := []testCase{
		testCase{"ping", "pong"},
		testCase{"Hello", "Hi"},
	}

	for _, tt := range testCases {
		if v := Bot(tt.question); v != tt.expectedAnswer {
			t.Errorf("Bot(`%v`):`%v`, WANT:`%v`", tt.question, v, tt.expectedAnswer)
		}
	}

}
