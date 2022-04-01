resource "intersight_macpool_pool" "PodXX_MAC_POOL" {
  name = "PodXX_MAC_POOL"

  mac_blocks {
    from = "00:25:B5:AF:10:00"
    to = "00:25:B5:AF:10:0A"
  }
}