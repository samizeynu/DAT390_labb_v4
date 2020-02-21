.PHONY: clean All

All:
	@echo "----------Building project:[ sys_tick - Debug ]----------"
	@cd "sys_tick" && "$(MAKE)" -f  "sys_tick.mk" && "$(MAKE)" -f  "sys_tick.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ sys_tick - Debug ]----------"
	@cd "sys_tick" && "$(MAKE)" -f  "sys_tick.mk" clean
