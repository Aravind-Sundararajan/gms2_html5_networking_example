function sio_init() {
	gml_pragma("global", "sio_init()");

#region macros
	#macro URL "https://aravindsundararajan.tech:3000"
#endregion

#region SocketIO
		sio_connect_by_url(URL);
#endregion

#region SocketIO:Events
		sio_addEvent("client_id");
		sio_addEvent("login");
		sio_addEvent("playerInfo");
		sio_addEvent("asyncPlayerInfo");
#endregion

}
