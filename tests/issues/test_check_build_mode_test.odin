#+test
package test_issues

import "core:testing"

check_test_mode_helper :: proc() {}

@(test)
check_test_mode :: proc(t: ^testing.T) {
	when #config(TEST_CHECK_EXPECT_ERROR, false) {
		check_test_mode_helper(123)
	}
}
