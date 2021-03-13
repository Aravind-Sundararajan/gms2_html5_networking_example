function gmcallback_sio_on_connect() {
	show_debug_message("connected to server!");
	emit_login(global.clientId);
}
