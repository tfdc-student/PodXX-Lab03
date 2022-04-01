resource "intersight_macpool_pool" "PodXX_MAC_POOL" {
  name = "PodXX_MAC_POOL"

  mac_blocks {
    from = "XX:25:B5:AF:10:00"
    to = "XX:25:B5:AF:10:0A"
  }
}

resource "intersight_macpool_pool" "PodXX_MAC_BLOCKS" {
  name = "PodXX_MAC_BLOCKS"
  dynamic "mac_blocks" {
    for_each = formatlist("%d", range(1, 3))
    content {
      from = "00:25:B5:AF:1${mac_blocks.value}:00"
      size = 10
    }
  }
}