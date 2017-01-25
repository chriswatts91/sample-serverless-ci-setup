##
# Prompts with a y/n question and reacts on the answer
#
# $1 - Question
# $2 - Action
#
# Example:
#	$(call confirm,"Wanna dance?",make dance)
define confirm
	@echo $1 [y/n]
	@read -e ANSWER; \
	case $$ANSWER in \
		[Yy]) $2;; \
		*) echo "Action cancelled";exit 0;; \
	esac
endef

##
# Prompts with a y/n question and reacts on the answer
#
define warn
	@echo "*********************************************************************"
	@echo "*WARNING* $1"
	@echo "*********************************************************************"
endef
