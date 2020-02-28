.PHONY: clean All

All:
	@echo "----------Building project:[ 1_GAME - Debug ]----------"
	@cd "spel" && "$(MAKE)" -f  "1_GAME.mk" && "$(MAKE)" -f  "1_GAME.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ 1_GAME - Debug ]----------"
	@cd "spel" && "$(MAKE)" -f  "1_GAME.mk" clean
