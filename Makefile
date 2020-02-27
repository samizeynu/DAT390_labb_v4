.PHONY: clean All

All:
	@echo "----------Building project:[ usart_polling - Debug ]----------"
	@cd "usart_polling" && "$(MAKE)" -f  "usart_polling.mk" && "$(MAKE)" -f  "usart_polling.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ usart_polling - Debug ]----------"
	@cd "usart_polling" && "$(MAKE)" -f  "usart_polling.mk" clean
