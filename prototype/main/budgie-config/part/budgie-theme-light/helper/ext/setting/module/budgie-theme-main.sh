

################################################################################
### Head: Setting / Module / Budgie / Variable
##

budgie_theme_main_var_init () {

	THE_BUDGIE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_budgie-theme-main.gschema.override"

	THE_BUDGIE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_BUDGIE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_BUDGIE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_BUDGIE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

budgie_theme_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: budgie_theme_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Budgie / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_BUDGIE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_BUDGIE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_BUDGIE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_BUDGIE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: budgie_theme_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

budgie_theme_main_var_init
budgie_theme_main_var_dump

##
### Tail: Setting / Module / Budgie / Variable
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Portal
##

budgie_theme_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_theme_main_config_install"
	util_error_echo "##"
	util_error_echo




	budgie_theme_main_settings_set_all

	return 0

}


budgie_theme_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_theme_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


budgie_theme_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_theme_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	budgie_theme_main_gschema_put_all


	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Budgie / Portal
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Settings
##

budgie_theme_main_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences theme 'Materia-light'"
	gsettings set org.gnome.desktop.wm.preferences theme 'Materia-light'








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'"
	gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface cursor-size 24"
	gsettings set org.gnome.desktop.interface cursor-size 24


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface gtk-key-theme 'Default'"
	gsettings set org.gnome.desktop.interface gtk-key-theme 'Default'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface gtk-theme 'Materia-light'"
	gsettings set org.gnome.desktop.interface gtk-theme 'Materia-light'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Light'"
	gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Light'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface color-scheme 'default'"
	gsettings set org.gnome.desktop.interface color-scheme 'default'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface gtk-color-scheme ''"
	gsettings set org.gnome.desktop.interface gtk-color-scheme ''








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.sound theme-name 'freedesktop'"
	gsettings set org.gnome.desktop.sound theme-name 'freedesktop'








	util_error_echo
	util_error_echo "gsettings set com.solus-project.budgie-panel dark-theme false"
	gsettings set com.solus-project.budgie-panel dark-theme false




	return 0
}

##
### Tail: Setting / Module / Budgie / Settings
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Gschema
##

budgie_theme_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_BUDGIE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_BUDGIE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Budgie / Gschema
################################################################################
