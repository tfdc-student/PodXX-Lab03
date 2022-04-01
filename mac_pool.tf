resource "intersight_macpool_pool" "PodXX_MAC_POOL" {  
  name = "PodXX_MAC_POOL"

  mac_blocks {
    from = "XX:00:00:00:00:00"
    size = 1000
  }
}








/*
resource "intersight_macpool_pool" "PodXX_MAC_BLOCKS" {
  name = "PodXX_MAC_BLOCKS"
  dynamic "mac_blocks" {
    for_each = formatlist("%d", range(1, 3))
    content {
      from = "XX:25:B5:AF:1${mac_blocks.value}:00"
      size = 10
    }
  }
}
*/