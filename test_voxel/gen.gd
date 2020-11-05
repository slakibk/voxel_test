extends VoxelGeneratorScript

export var channel:int = VoxelBuffer.CHANNEL_TYPE

func get_used_channels_mask () -> int:
		return 1<<channel
 
func generate_block(buffer:VoxelBuffer, origin:Vector3, lod:int) -> void:
	if lod != 0: return
	if origin.y < 0: buffer.fill(1, channel)
	if origin.x==origin.z and origin.y < 1: buffer.fill(1,channel)
