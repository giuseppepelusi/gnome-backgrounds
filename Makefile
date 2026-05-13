HOME_DIR = $(HOME)
USER_NAME = $(USER)

BACKGROUNDS_DIR = $(HOME_DIR)/.local/share/backgrounds
PROPERTIES_DIR = $(HOME_DIR)/.local/share/gnome-background-properties

WALLPAPERS = $(notdir $(wildcard backgrounds/*))

install:
	for wp in $(WALLPAPERS); do \
		mkdir -p $(BACKGROUNDS_DIR)/$$wp $(PROPERTIES_DIR); \
		cp backgrounds/$$wp/images/* $(BACKGROUNDS_DIR)/$$wp/; \
		cp backgrounds/$$wp/slideshow.xml $(BACKGROUNDS_DIR)/$$wp/$$wp.xml; \
		cp backgrounds/$$wp/properties.xml $(PROPERTIES_DIR)/$$wp.xml; \
		sed -i "s/__USER__/$(USER_NAME)/g" $(BACKGROUNDS_DIR)/$$wp/$$wp.xml; \
		sed -i "s/__USER__/$(USER_NAME)/g" $(PROPERTIES_DIR)/$$wp.xml; \
		echo "Installed: $$wp"; \
	done

uninstall:
	for wp in $(WALLPAPERS); do \
		rm -rf $(BACKGROUNDS_DIR)/$$wp; \
		rm -f $(PROPERTIES_DIR)/$$wp.xml; \
		echo "Removed: $$wp"; \
	done

.PHONY: install uninstall
.SILENT: install uninstall
