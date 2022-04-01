resource "intersight_macpool_pool" "PodXX_MAC_POOL" {  
  name = "PodXX_MAC_POOL"

  mac_blocks {
    from = "00:00:00:00:00:00"
    size = 1000
  }
}
