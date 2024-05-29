

################################################################################
### Head: Setting / Module / Budgie / Variable
##

budgie_wallpaper_main_var_init () {

	THE_BUDGIE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_budgie-wallpaper-main.gschema.override"

	THE_BUDGIE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_BUDGIE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_BUDGIE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_BUDGIE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

budgie_wallpaper_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: budgie_wallpaper_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Budgie / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_BUDGIE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_BUDGIE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_BUDGIE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_BUDGIE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: budgie_wallpaper_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

budgie_wallpaper_main_var_init
budgie_wallpaper_main_var_dump

##
### Tail: Setting / Module / Budgie / Variable
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Portal
##

budgie_wallpaper_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_wallpaper_main_config_install"
	util_error_echo "##"
	util_error_echo




	budgie_wallpaper_main_settings_set_all

	return 0

}


budgie_wallpaper_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_wallpaper_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


budgie_wallpaper_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_wallpaper_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	budgie_wallpaper_main_gschema_put_all


	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Budgie / Portal
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Settings
##

budgie_wallpaper_main_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.png'"
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.png'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/default.png'"
	gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/default.png'








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default.png'"
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default.png'




	return 0
}

##
### Tail: Setting / Module / Budgie / Settings
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Gschema
##

budgie_wallpaper_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_BUDGIE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_BUDGIE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
