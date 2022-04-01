/*
resource "intersight_macpool_pool" "PodXX_MAC_POOL" {  
  count = 2
  name = "PodXX_MAC_POOL_${count.index}"

  mac_blocks {
    from = "XX:25:B5:AF:10:${count.index}0"
    to = "XX:25:B5:AF:10:${count.index}A"
  }
}

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