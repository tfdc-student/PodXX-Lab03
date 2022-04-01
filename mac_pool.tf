resource "intersight_macpool_pool" "PodXX_MAC_POOL" {
  name = "PodXX_MAC_POOL"

  mac_blocks {
    from = "XX:25:B5:AF:10:00"
    to = "XX:25:B5:AF:10:0A"
  }
}