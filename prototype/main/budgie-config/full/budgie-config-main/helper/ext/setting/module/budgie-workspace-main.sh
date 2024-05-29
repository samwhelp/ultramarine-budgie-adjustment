

################################################################################
### Head: Setting / Module / Budgie / Variable
##

budgie_workspace_main_var_init () {

	THE_BUDGIE_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_budgie-workspace-main.gschema.override"

	THE_BUDGIE_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_BUDGIE_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_BUDGIE_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_BUDGIE_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

budgie_workspace_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: budgie_workspace_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Budgie / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_BUDGIE_WORKSPACE_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_BUDGIE_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_BUDGIE_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_BUDGIE_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_BUDGIE_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: budgie_workspace_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

budgie_workspace_main_var_init
budgie_workspace_main_var_dump

##
### Tail: Setting / Module / Budgie / Variable
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Portal
##

budgie_workspace_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_workspace_main_config_install"
	util_error_echo "##"
	util_error_echo




	budgie_workspace_main_settings_set_all





	return 0

}


budgie_workspace_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_workspace_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo





	return 0

}


budgie_workspace_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## budgie_workspace_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	budgie_workspace_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Budgie / Portal
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Settings
##

budgie_workspace_main_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences num-workspace 5"
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences workspace-names \"['File', 'Edit', 'Web', 'Term', 'Misc']\""
	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"








	util_error_echo
	util_error_echo "gsettings set org.gnome.mutter dynamic-workspaces false"
	gsettings set org.gnome.mutter dynamic-workspaces false








	#util_error_echo
	#util_error_echo "gsettings set org.gnome.shell.overrides dynamic-workspaces false"
	#gsettings set org.gnome.shell.overrides dynamic-workspaces false




	return 0
}

##
### Tail: Setting / Module / Budgie / Settings
################################################################################


################################################################################
### Head: Setting / Module / Budgie / Gschema
##

budgie_workspace_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_BUDGIE_WORKSPACE_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_BUDGIE_WORKSPACE_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
