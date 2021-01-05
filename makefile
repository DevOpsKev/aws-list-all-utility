
# example usage
# 1. make aws-client-utility/docker/aws-client-utility-destroy
# 2. make aws-client-utility/docker/aws-client-utility-run
# 3. make aws-client-utility/docker/aws-client-utility-bootstrap 2>&1 | tee -a make-log.txt
# 4. make aws-client-utility/docker/aws-client-utility-execute
# 5. make aws-client-utility/docker/aws-client-utility-push


export BUILD_HARNESS_PATH ?= $(shell 'pwd')

# Import Makefiles into current context
include $(BUILD_HARNESS_PATH)/modules/*/makefile	