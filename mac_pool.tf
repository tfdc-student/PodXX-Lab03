resource "intersight_macpool_pool" "PodXX_MAC_POOL" {  
  count = 2
  name = "PodXX_MAC_POOL_${count.index}"

  mac_blocks {
    from = "00:0${count.index}:00:00:00:00"
    size = 1000
  }
}
