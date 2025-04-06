extends Node2D


const PORT = 26027
var WEB = ENetMultiplayerPeer.new()

var players = []


func host ():
	WEB.create_server(PORT)
	WEB.peer_connected.connect(on_connecting)
	WEB.peer_disconnected.connect(on_disconnecting)
	multiplayer.multiplayer_peer = WEB
	print("host")
	spawn_player()

func join (ip):
	WEB.create_client(ip, PORT)
	multiplayer.multiplayer_peer = WEB
	print("join")

func on_connecting(id : int):
	print("connecting " , multiplayer.get_unique_id())
	print(multiplayer.get_peers())
	spawn_player.rpc()

func on_disconnecting(id : int):
	print("player " , multiplayer.get_unique_id() , " disconnected")

@rpc("any_peer", "call_local", "reliable")
func spawn_player():
	var pleer = preload("res://pleers/player/player.tscn").instantiate()
	get_parent().add_child(pleer)
